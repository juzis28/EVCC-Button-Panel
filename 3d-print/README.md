# Parametric Enclosure v26

## KEBA EVCC Panel - ESP32 Control System Enclosure

---

## INTRODUCTION

This enclosure is designed for the **KEBA EVCC Panel** project - an ESP32-based control system for SolarEdge KEBA P30 x-series EV charging stations. The enclosure mounts on top of the charging station and provides a user-friendly interface with arcade-style buttons and LED status indicators.

**Key Features:**
- Sloped front panel for ergonomic button access
- 4 arcade buttons for charging mode selection (OFF, PV, MIN+PV, MAX)
- 4 LED status indicators (Traffic Light style)
- ESP32 8-channel relay board housing
- DC power input jack
- Designed to sit neatly on top of KEBA P30 charging station

The design is **fully parametric** - while currently configured for this specific project, all dimensions can be customized for different buttons, boards, and use cases.

---

## OPENSCAD BASICS

### What is OpenSCAD?

OpenSCAD is a free, open-source CAD program for creating 3D models using code. Unlike traditional CAD software, you describe objects programmatically, making it perfect for parametric designs.

### Getting Started

1. **Download OpenSCAD:** [https://openscad.org/downloads.html](https://openscad.org/downloads.html)
2. **Open the .scad file:** File → Open → select `enclosure_v26.scad`
3. **Preview the model:** Press F5 (quick preview) or F6 (full render)
4. **Modify parameters:** Edit values at the top of the file, then press F5 to see changes

### Exporting STL for 3D Printing

1. Set `part_to_render` to the part you want (1-5)
2. Press F6 to render (this may take a moment)
3. File → Export → Export as STL
4. Save with descriptive name (e.g., `enclosure_body.stl`)
5. Repeat for each part

### Tips

- Use F5 for quick preview while adjusting parameters
- Use F6 only when ready to export (slower but accurate)
- Check the Console window for any error messages
- Parameters are at the top of the file with comments explaining each one

---

## 1. OVERVIEW

This parametric enclosure is designed for housing ESP32-based relay control systems with arcade-style push buttons. The design features a sloped front panel for ergonomic button access and LED visibility. All parts are 3D printable without supports when oriented correctly.

---

## 2. TARGET HARDWARE

### Primary Components

| Component | Specifications | Notes |
|-----------|---------------|-------|
| ESP32 Relay Board | 87 x 93 mm (8-channel) | 4 mounting holes, M3 screws |
| Arcade Push Buttons | 16.5mm mounting hole | Up to 4 buttons supported |
| LED Traffic Light Board | 65 x 19 mm, 4 LEDs | 10mm LEDs, 3mm mounting holes |
| DC Power Jack | 5.5 x 2.5 mm barrel | 12.3mm panel mount hole |

### Recommended Fasteners

| Location | Screw Type | Quantity |
|----------|-----------|----------|
| Bottom plate corners | M3 x 8mm | 4 |
| Lip mounting | M2.5 self-tapping | 4 |
| ESP32 board | M3 x 6mm + standoffs | 4 |
| LED board | M3 x 6mm | 4 |

---

## 3. PART SELECTION (`part_to_render`)

Use this parameter to export individual STL files for 3D printing:

| Value | Part | Print Orientation |
|-------|------|-------------------|
| 0 | All parts assembled (preview) | N/A - for visualization only |
| 1 | Main body only | Front panel facing down |
| 2 | Bottom plate | Flat side down |
| 3 | Left side wall | Profile face down (nice side) |
| 4 | Right side wall | Profile face down (nice side) |
| 5 | Both side walls | Profile faces down |
| 6 | DEBUG - LED holes | N/A - for debugging |

---

## 4. KEY PARAMETERS

### 4.1 Enclosure Dimensions

| Parameter | Default | Description |
|-----------|---------|-------------|
| `enclosure_width` | 105 | Width in mm (X axis, front to back) |
| `enclosure_height` | 70 | Height in mm (Z axis) |
| `enclosure_length_custom` | 145 | Length in mm (Y axis) |
| `wall_thickness` | 3 | Wall thickness in mm |
| `front_flat` | 35 | Flat section at top of front panel |
| `slope` | 70 | Angle of sloped front panel (degrees) |

### 4.2 Button Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `hole_dia` | 16.5 | Button mounting hole diameter (mm) |
| `button_num` | 4 | Number of buttons (1-4) |
| `button_spacing_auto` | 1 | 1=auto space evenly, 0=manual |
| `button_height_auto` | 1 | 1=auto center, 0=manual height |
| `button_height_adjustment` | 95 | Fine adjustment from center |

### 4.3 LED Board Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `led_board_enable` | 1 | 1=add LED holes, 0=disable |
| `led_count` | 4 | Number of LEDs (0-4) |
| `led_board_from_top` | 36 | Distance from top to board center |
| `led_board_slide` | 5 | Slide along slope (+toward buttons) |
| `led_vertical_offset` | 2 | LED offset from board center |
| `led_screw_enable` | 1 | 1=add screw holes, 0=no screws |

### 4.4 DC Power Socket

| Parameter | Default | Description |
|-----------|---------|-------------|
| `dc_socket_enable` | 1 | 1=add socket hole, 0=disable |
| `dc_socket_side` | 0 | 0=left, 1=right, 2=both sides |
| `dc_socket_dia` | 12.5 | Mounting hole diameter (mm) |
| `dc_socket_from_back` | 15 | Distance from back wall (mm) |
| `dc_socket_from_bottom` | 12 | Height from bottom (mm) |

### 4.5 ESP32 Board Mounting

| Parameter | Default | Description |
|-----------|---------|-------------|
| `esp32_board_mount` | 1 | 1=add mounting posts, 0=disable |
| `esp32_board_width` | 93 | Board width in mm (Y axis) |
| `esp32_board_length` | 87 | Board length in mm (X axis) |
| `esp32_post_height` | 5 | Post height above bottom plate |
| `esp32_post_gusset` | 1 | 1=add reinforcement gussets |
| `esp32_board_offset_x/y` | 0 | Offset from center position |

---

## 5. 3D PRINTING GUIDE

### Recommended Print Settings

| Setting | Recommended Value |
|---------|------------------|
| Layer Height | 0.2mm (0.16mm for fine detail) |
| Infill | 20-30% |
| Perimeters | 3 (for strength) |
| Supports | Not required if oriented correctly |
| Material | PLA, PETG, or ABS |
| Bed Adhesion | Brim recommended for side walls |

### Print Orientation per Part

**Main Body (`part_to_render=1`):**
Print with the front panel (sloped side) facing the build plate. This ensures the best surface finish on the visible exterior.

**Bottom Plate (`part_to_render=2`):**
Print flat side down. The mounting posts and gussets will print without supports.

**Side Walls (`part_to_render=3,4,5`):**
Already oriented correctly - the "nice" side (smooth, no layer lines visible) faces down on the print bed and becomes the exterior when assembled.

---

## 6. ASSEMBLY ORDER

1. Install ESP32 relay board onto bottom plate mounting posts with M3 screws
2. Connect all wiring to ESP32 board (power, relays, buttons)
3. Mount DC power jack in side wall (left side by default)
4. Insert side walls into grooves on main body
5. Slide bottom plate into position from below
6. Secure bottom plate with corner screws (M3)
7. Install lip screws (M2.5 self-tapping) through bottom plate into lips
8. Mount LED board from inside using M3 screws
9. Install arcade buttons from front panel

---

## 7. TROUBLESHOOTING

### Side walls don't fit
Adjust `side_wall_clearance` (default 0.3). Increase if too tight, decrease if too loose. Also check `groove_depth` and `groove_width_adjustment`.

### ESP32 posts interfere with lips
The gussets are automatically removed when there's insufficient clearance. If posts still interfere, adjust `esp32_board_offset_x` to move the board, or increase `enclosure_width`.

### LED holes misaligned
Use `part_to_render=6` for debug visualization. Adjust `led_board_from_top`, `led_board_slide`, and `led_vertical_offset` to fine-tune position.

### Buttons too high/low
Set `button_height_auto=0` and manually specify `button_height_from_bottom`, or use `button_height_adjustment` for fine-tuning from auto position.

---

## 8. QUICK REFERENCE

### Enable/Disable Features

| Feature | Parameter | Enable | Disable |
|---------|-----------|--------|---------|
| LED board holes | `led_board_enable` | 1 | 0 |
| LED screw holes | `led_screw_enable` | 1 | 0 |
| DC power socket | `dc_socket_enable` | 1 | 0 |
| ESP32 mounting | `esp32_board_mount` | 1 | 0 |
| Post gussets | `esp32_post_gusset` | 1 | 0 |
| Bottom plate lip | `lip_enable` | 1 | 0 |
| Button text labels | `dotext` | 1 | 0 |
| Secondary text | `text2_enable` | 1 | 0 |

---

## 9. CUSTOMIZATION

This enclosure is fully parametric - you can adapt it for different projects:

- **Different buttons:** Change `hole_dia` and `button_num`
- **Different ESP32 board:** Adjust `esp32_board_width`, `esp32_board_length`, `esp32_corner_inset`
- **Different LED board:** Modify `led_spacing`, `led_count`, `led_screw_spacing_x/y`
- **Larger/smaller enclosure:** Scale `enclosure_width`, `enclosure_height`, `enclosure_length_custom`
- **Different slope angle:** Adjust `slope` (degrees) and `front_flat`

The current configuration is optimized for:
- SolarEdge KEBA P30 x-series charging station
- ESP32 8-channel relay board (87x93mm)
- 16.5mm arcade push buttons (4x)
- Traffic Light LED board (65x19mm, 4 LEDs)
- 5.5x2.5mm DC barrel jack

---

**Enclosure v26 - KEBA EVCC Panel Project | OpenSCAD Parametric Design | December 2025**

