# KEBA EVCC Panel - ESP32 Control System

[![ESPHome](https://img.shields.io/badge/ESPHome-2024.x-blue.svg)](https://esphome.io/)
[![Home Assistant](https://img.shields.io/badge/Home%20Assistant-Integration-41BDF5.svg)](https://www.home-assistant.io/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

ESP32-based control panel for managing **EVCC** (Electric Vehicle Charge Controller) charging modes through **Home Assistant**. Physical buttons with LED indicators allow easy mode switching, while a separate status LED panel shows system health.

![Wiring Schematic](docs/ESP32_Relay_Soldering_Guide_v2.1.png)

## ⚠️ Disclaimer

**This project is for personal use and educational purposes only.**

The author assumes no responsibility for any damage, malfunction, or issues arising from the use of this project. Use at your own risk. This documentation is provided "as is" for informational purposes only. Always consult qualified professionals when working with electrical systems and EV charging equipment.

## 🎯 Project Background

This project was developed for personal use with the following setup:

**EV Charging Station:**
- **KEBA KeContact P30 x-series** wallbox
- Part of **SolarEdge** ecosystem (with SolarEdge inverter)
- Should also be compatible with other original or rebranded KEBA P30 x-series charging stations

**Software Stack:**
| Component | Platform |
|-----------|----------|
| **EVCC** | Proxmox LXC Container |
| **Home Assistant** | Proxmox Virtual Machine |
| **EVCC Integration** | Home Assistant HACS |
| **ESPHome** | Proxmox LXC Container (or local installation) |

## ✨ Features

| Feature | Description |
|---------|-------------|
| **4 Charging Modes** | OFF, SOLAR (PV), MIN+PV, FAST (NOW) |
| **Physical Buttons** | Momentary buttons with integrated LED indicators |
| **Status LED Panel** | 4-LED panel (D1-D4) showing Power, HA, WiFi, EVCC status |
| **Error Mode** | All LEDs blink when WiFi/HA connection lost |
| **5s Restart** | Hold OFF button for 5 seconds to restart ESP32 |
| **Night Mode** | Disable button LEDs via Home Assistant boolean |
| **Multi-Press Protection** | Prevents conflicts from simultaneous button presses |

## 🔧 Hardware

### Assembled Project

The panel features a **3D printed enclosure** mounted on top of the KEBA KeContact P30 charger:

<p align="center">
  <img src="docs/images/panel_off_mode.jpg" alt="OFF Mode" width="280"/>
  <img src="docs/images/panel_pv_mode.jpg" alt="PV Mode" width="280"/>
  <img src="docs/images/panel_minpv_mode.jpg" alt="MIN+PV Mode" width="280"/>
</p>
<p align="center">
  <em>Operating modes: OFF (Red) | PV/Solar (Yellow) | MIN+PV (Green)</em>
</p>

<p align="center">
  <img src="docs/images/panel_fast_mode.jpg" alt="FAST Mode" width="400"/>
  <br><em>FAST mode (Blue) - Immediate charging at maximum power</em>
</p>

**Visible elements:**
- 4 LED push buttons (OFF, PV, MIN+PV, FAST) with mode labels
- Status LED panel (D1-D4) showing Power, HA, WiFi, EVCC status
- 3D printed enclosure with integrated cable management
- KEBA KeContact P30 x-series charger (SolarEdge branded)

### Main Components

| Component | Description | Link |
|-----------|-------------|------|
| **ESP32 Board** | ESP32_Relay_X4_V1.1 (LC Technology) | [AliExpress](https://www.aliexpress.com/item/1005008762604101.html) |
| **LED Buttons** | 12V LED Momentary Push Buttons AL6-M (4 colors) | [AliExpress](https://www.aliexpress.com/item/1005007250758674.html) |
| **Status LED Panel** | ST-009 4-Bit Indicator Light Module (DC 3.3-5V) | [AliExpress](https://www.aliexpress.com/item/1005009691105445.html) |
| **DC Power Socket** | 5.5mm x 2.5mm Female Panel Mount Connector | [AliExpress](https://www.aliexpress.com/item/1005006755624202.html) |
| **Power Supply** | 12V 2A AC/DC Adapter (5.5mm x 2.5mm plug) | [AliExpress](https://www.aliexpress.com/item/1005007286854242.html) |

### Component Photos

<p align="center">
  <img src="docs/images/esp32_relay_x4.png" alt="ESP32 Relay X4 Board" width="400"/>
  <br><em>ESP32_Relay_X4_V1.1 Board</em>
</p>

<p align="center">
  <img src="docs/images/led_buttons.png" alt="LED Push Buttons" width="400"/>
  <br><em>12V LED Momentary Push Buttons (AL6-M)</em>
</p>

<p align="center">
  <img src="docs/images/status_led_panel.png" alt="Status LED Panel" width="400"/>
  <br><em>ST-009 4-Bit Status LED Indicator Module</em>
</p>

### Specifications

- **ESP32 Board:** ESP32_Relay_X4_V1.1 with 4x NO relay contacts, 12V coil, ESP32-WROOM-32E module
- **LED Buttons:** 12V NO momentary push buttons (AL6-M type) with integrated LEDs
  - Button 1: **Red** (OFF)
  - Button 2: **Green** (SOLAR/PV)
  - Button 3: **Yellow/Orange** (MIN+PV)
  - Button 4: **Blue** (FAST/NOW)
- **Status LED Panel:** ST-009 4-Bit module (DC 3.3-5V, Common Anode/Active LOW, D1-D4 labels)
- **DC Power Socket:** 5.5mm x 2.5mm female panel mount connector for 12V input
- **Power Supply:** 12V 2A AC/DC adapter with 5.5mm x 2.5mm barrel plug

### 3D Printed Enclosure

The project includes a custom 3D printed enclosure designed to mount on top of the KEBA charger:
- Holds 4 LED push buttons in a row
- Integrated status LED panel mounting
- Cable management channels
- DC power jack mounting hole

*openSCAD scripts and STL files available in the `3d-print/` folder (coming soon)*

## 📌 GPIO Pinout

### Relay Outputs (Button LEDs)
| GPIO | Relay | Button | Function | LED Color |
|------|-------|--------|----------|-----------|
| GPIO32 | Relay 1 | Button 4 | FAST (NOW) | Blue |
| GPIO33 | Relay 2 | Button 3 | MIN+PV | Yellow |
| GPIO25 | Relay 3 | Button 2 | SOLAR (PV) | Green |
| GPIO26 | Relay 4 | Button 1 | OFF | Red |

### Button Inputs
| GPIO | Button | Function | Special |
|------|--------|----------|---------|
| GPIO12 | Button 1 | OFF | Hold 5s = Restart |
| GPIO13 | Button 2 | SOLAR (PV) | - |
| GPIO14 | Button 3 | MIN+PV | - |
| GPIO27 | Button 4 | FAST (NOW) | - |

### Status LED Panel (Active LOW)
| GPIO | LED | Wire | Indication |
|------|-----|------|------------|
| GPIO16 | D1 | Pink | Power - Always ON |
| GPIO17 | D2 | Green | HA Connected |
| GPIO18 | D3 | Cyan | WiFi Connected |
| GPIO19 | D4 | Purple | EVCC Entity Received |

**Power from P5 (Programming Header):**
- VCC (5V) ← P5 Pin 1
- GND ← P5 Pin 4 or 5

## 🔌 Wiring

```
+12V Rail (P2) ──────┬──────┬──────┬──────┐
                     │      │      │      │
                    COM    COM    COM    COM
                   [R1]   [R2]   [R3]   [R4]
                    NO     NO     NO     NO
                     │      │      │      │
                   LED+   LED+   LED+   LED+
                  [Btn4] [Btn3] [Btn2] [Btn1]
                   LED-   LED-   LED-   LED-
                     │      │      │      │
GND Rail (P2) ──────┴──────┴──────┴──────┘

Button NO pins → ESP32 GPIOs (12, 13, 14, 27)
Status LEDs → ESP32 GPIOs (16, 17, 18, 19) + P5 power
```

## ⚙️ Configuration

### YAML Substitutions
```yaml
substitutions:
  mode_off: "off"
  mode_solar: "pv"
  mode_min_solar: "minpv"
  mode_fast: "now"
  restart_hold_time: "5000ms"
  error_blink_interval: "500ms"
  error_blink_button_led: "true"
```

### Home Assistant Required Entity
```
select.evcc_ev_charger_mode
```

### Optional: Night Mode
Create `input_boolean` in HA to disable button LEDs:
```yaml
input_boolean:
  keba_panel_disable_leds:
    name: "KEBA Panel - Disable Button LEDs"
    icon: mdi:led-off
```

Night mode automation example:
```yaml
automation:
  - alias: "KEBA Panel Night Mode ON"
    trigger:
      - platform: time
        at: "22:00:00"
    action:
      - service: input_boolean.turn_on
        entity_id: input_boolean.keba_panel_disable_leds

  - alias: "KEBA Panel Night Mode OFF"
    trigger:
      - platform: time
        at: "07:00:00"
    action:
      - service: input_boolean.turn_off
        entity_id: input_boolean.keba_panel_disable_leds
```

## 🚀 Installation

1. **Create `secrets.yaml`:**
   ```yaml
   wifi_ssid: "Your_WiFi"
   wifi_password: "Your_Password"
   ap_password: "Fallback_AP_Password"
   ```

2. **Compile & Upload:**
   ```bash
   esphome compile keba-evcc-panel-v2.1.yaml
   esphome upload keba-evcc-panel-v2.1.yaml
   ```

3. **Home Assistant Setup:**
   - Device auto-discovered via ESPHome integration
   - Enable **"Allow service calls"** in device settings
   - Optionally create `input_boolean.keba_panel_disable_leds`

## 🚨 Error Mode

**Triggers:**
- WiFi connection lost
- Home Assistant API disconnected
- 15 seconds after boot without HA connection

**Indicators:**
- All 4 status LEDs (D1-D4) blink synchronously
- OFF button LED blinks (configurable)
- 500ms ON/OFF interval

**Recovery:**
- **Automatic:** When HA reconnects
- **Manual:** Hold OFF button for 5 seconds → 3x rapid flash → ESP32 reboots

## 📁 Project Files

| File | Description |
|------|-------------|
| `keba-evcc-panel-v2.1.yaml` | ESPHome configuration |
| `ESP32_Relay_Soldering_Guide_v2.1.pdf` | Wiring schematic |
| `KEBA_EVCC_Panel_Manual.pdf` | Complete documentation |

## 🔗 Resources

- [ESPHome Documentation](https://esphome.io/)
- [Home Assistant ESPHome Integration](https://www.home-assistant.io/integrations/esphome/)
- [EVCC Documentation](https://docs.evcc.io/)
- [ESP32_Relay_X4 on ESPHome Devices](https://devices.esphome.io/devices/esp32-relay-x4/)

## 📄 License & Disclaimer

**MIT License** - Free to use and modify.

This project is intended for **personal and educational purposes only**. The author provides this documentation "as is" without any warranties, express or implied. The author shall not be held liable for any damages, injuries, or losses resulting from the use or misuse of this project.

**By using this project, you acknowledge that:**
- You are solely responsible for your own safety
- Working with electrical systems requires proper knowledge and precautions
- EV charging equipment should be installed and maintained by qualified professionals
- You use this information at your own risk

---

**Version 2.1** | December 2025 | Board: ESP32_Relay_X4_V1.1
