# KEBA Wallbox Display Controller

Home Assistant configuration package for intelligent KEBA EV wallbox display management with EVCC integration.

## Features

- **Real-time power display** during charging (e.g., "11.2kW")
- **Animated status messages** with cycling display
- **Automatic LED control** based on connection state
- **Mode change notifications** (Solar, Min+PV, Fast, Off)
- **Energy consumption tracking** sensors

## Prerequisites

- Home Assistant installed and running
- EVCC integration configured with your KEBA wallbox
- `notify.wallbox` service configured for KEBA display

### Required EVCC Entities

| Entity ID | Description |
|-----------|-------------|
| `sensor.evcc_ev_charger_charge_power` | Current charging power in kW |
| `binary_sensor.evcc_ev_charger_connected` | EV connection status (on/off) |
| `select.evcc_ev_charger_mode` | Charging mode (off, pv, minpv, now) |
| `sensor.evcc_ev_charger_vehicle_odometer` | Vehicle odometer reading (km) |
| `sensor.evcc_stat_total_charged_kwh` | Total energy charged (kWh) |

## Installation

1. Copy `keba_evcc.yaml` to your Home Assistant packages directory:
   ```
   /config/packages/keba_evcc.yaml
   ```

2. Ensure packages are enabled in your `configuration.yaml`:
   ```yaml
   homeassistant:
     packages: !include_dir_named packages
   ```

3. Restart Home Assistant

4. Verify all automations are enabled in **Settings → Automations**

## Display States

The display cycles between two messages on a 12-second loop (9s primary, 3s secondary):

| State | Primary (9s) | Secondary (3s) |
|-------|--------------|----------------|
| Charging | Power value (e.g., "11.2kW") | "Charging..." |
| Not connected | "Unplugged" | (empty) |
| Connected, mode off | "Standby" | "Plugged in" |
| Connected, waiting | Mode name (Solar/Min+PV/Fast) | "Waiting..." |

## Components

### Automations

| Automation | Function |
|------------|----------|
| `KEBA Display - Main loop` | Core display controller (runs every 3s) |
| `KEBA Display - Realtime power update` | Immediate update on power change |
| `KEBA Display - Show mode when changed` | Shows new mode for 12 seconds |
| `KEBA Display - Push updates to wallbox` | Sends text to KEBA via notify.wallbox |
| `KEBA Panel - Enable LEDs when EV connected` | Activates LEDs on vehicle connect |
| `KEBA Panel - Disable LEDs when EV disconnected` | Deactivates LEDs after 5 min |
| `KEBA Display - Reset text on disconnect` | Clears display after 5 min |

## Customization

### Changing Display Messages

Edit the `keba_display_main_loop` automation. Find the relevant state section and modify the `value` template.

### Adjusting Timing

| Setting | Location | Default |
|---------|----------|---------|
| Main loop interval | `seconds: "/3"` | 3 seconds |
| Display cycle ratio | `cycle < 9` condition | 75% primary |
| LED disable delay | `for: "00:05:00"` in disconnect triggers | 5 minutes |
| Mode display duration | `count: 6` and `delay` in mode change automation | 12 seconds |

## Troubleshooting

### Known Issues

#### "Cannot read properties of undefined" Error

This error appears in automation traces for `time_pattern` triggers. This is a **Home Assistant UI bug**, not a configuration problem. The automation executes correctly despite the error message.

### Verification Steps

1. Go to **Developer Tools → States**
2. Search for `input_text.keba_display_text`
3. Verify the value changes every 3 seconds
4. Check wallbox display shows corresponding text

### Common Problems

| Problem | Solution |
|---------|----------|
| Display not updating | Check if automation is enabled. Verify `notify.wallbox` service is configured. |
| Wrong power values | Verify `sensor.evcc_ev_charger_charge_power` entity exists and has correct values. |
| Mode not showing | Check `select.evcc_ev_charger_mode` entity. Ensure EVCC integration is working. |
| LEDs not turning on/off | Verify `input_boolean.keba_panel_disable_leds` is linked to your wallbox LED control. |

## License

MIT License - Feel free to use and modify.

## Version

2.0 • December 2025
