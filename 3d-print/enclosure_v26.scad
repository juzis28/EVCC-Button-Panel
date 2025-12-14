// ============================================================================
// PART SELECTION - Set to export individual STL files
// ============================================================================
// 0 = show all parts assembled, 1 = body only, 2 = bottom plate, 3 = left side wall, 4 = right side wall, 5 = both side walls, 6 = DEBUG LED holes
part_to_render = 0; 

// ============================================================================
// BUTTON HOLES
// ============================================================================
hole_dia=16.5;
button_num=4;
button_height_auto=1; // 1=auto center vertically, 0=use manual height
button_height_from_bottom=50; // Manual height of button centers from bottom (only if auto=0)
button_height_adjustment=95; // Fine adjustment (+/-) from auto-centered position
button_spacing_auto=1; // 1=auto space buttons evenly, 0=use manual spacing
button_spacing_manual=25; // Manual space between button centers (only if auto=0)
button_margin=20; // Margin from edges when auto-spacing

// ============================================================================
// ENCLOSURE DIMENSIONS
// ============================================================================
enclosure_width=105; // Width (X axis - front to back) - FIXED outer dimension
enclosure_height=70; // Height (Z axis - bottom to top)
enclosure_length_auto=0; // 1=auto calculate from buttons, 0=use custom length
enclosure_length_custom=145; // Custom total length (Y axis) - only used if auto=0
wall_thickness=3;

// ============================================================================
// FRONT PANEL
// ============================================================================
front_flat=35; // Flat section at top of front panel
slope=70; // Angle of front panel

// ============================================================================
// TEXT OPTIONS
// ============================================================================
dotext=1; // 1=yes or 0=no
text_depth=2; // How deep text is engraved
text_size=7; // Text size
text_height=8; // Height of text from bottom (Z position) - for front panel
text_on_slope=1; // 0=text on front vertical panel, 1=text on slope panel with buttons
text_slope_offset=90; // Distance below button center when on slope

// Secondary text (only when text_on_slope=1)
text2_enable=0; // 1=show text2 on front panel when text_on_slope=1
text2_content="evcc"; // Text to display on front panel
text2_size=12; // Size of secondary text
text2_height=10; // Height from bottom
text2_depth=2; // Engraving depth (or raised height if text2_raised=1)
text2_raised=1; // 0=engraved (cut into surface), 1=raised (protrudes from surface)
text2_frame=1; // 1=add rounded frame around text2, 0=no frame
text2_frame_padding=3; // Space between text and frame
text2_frame_radius=3; // Corner rounding radius
text2_frame_thickness=1; // Frame line thickness

// ============================================================================
// LED BOARD OPTIONS (4 digit LED Traffic Light board: 65x19mm, LEDs 10mm, holes 3mm)
// ============================================================================
led_board_enable=1;             // 1=add LED board mounting, 0=no LED board
led_count=4;                    // Number of LEDs (0-4)
led_hole_dia_outside=3;         // Diameter of LED hole on outside (visible)
led_hole_dia_inside=6;          // Diameter of LED hole on inside (larger, for LED fit)
led_hole_depth=2;               // Depth of parabolic transition from inside to outside diameter
led_spacing=15;                 // Space between LED centers
led_board_from_top=36;          // Distance from top of enclosure to board center (base position)
led_board_slide=5;              // Slide whole board along slope: positive=toward buttons, negative=away
led_board_position_y=0;         // Offset from center along Y axis (0=center)
led_vertical_offset=2;          // LED vertical offset from board center (positive=up on board)
led_screw_enable=1;             // 1=add screw holes for LED board, 0=no screw holes
led_screw_hole_dia=3.2;         // M3 screw hole diameter
led_screw_spacing_x=60;         // Horizontal distance between screw holes (board width)
led_screw_spacing_y=15;         // Vertical distance between screw holes (board height)
led_screw_offset_z=0;           // Screw holes Z offset from LED center line

// ============================================================================
// DC POWER SOCKET (5.5x2.5mm jack) on side wall
// ============================================================================
dc_socket_enable=1;             // 1=add DC socket hole, 0=no socket
dc_socket_side=0;               // 0=left side, 1=right side, 2=both sides (viewed from front)
dc_socket_dia=12.5;             // Mounting hole diameter (12.3mm socket + clearance)
dc_socket_from_back=15;         // Distance from back wall (Y position)
dc_socket_from_bottom=12;       // Distance from bottom (Z position)

// ============================================================================
// BOTTOM PLATE OPTIONS
// ============================================================================
bottom_plate_removable=1; // 1=separate bottom plate with screws, 0=integrated bottom
screw_hole_dia=3.2; // Diameter of screw holes (M3 = 3.2mm)
screw_head_dia=6; // Diameter of screw head countersink
screw_head_depth=1.5; // Depth of countersink for screw head
screw_inset_from_edge=10; // Distance of screw holes from edges

// ============================================================================
// SIDE WALLS OPTIONS
// ============================================================================
side_walls_removable=1; // 1=separate left and right side walls, 0=integrated

// Groove for side walls
groove_distance=3;              // Distance from main body edge where groove is cut
groove_depth=1;                 // How deep groove cuts into wall (this determines side wall size)
groove_width_adjustment=1;      // Extra width for clearance (doesn't affect side wall)
groove_depth_adjustment=0.2;    // Extra depth for clearance (doesn't affect side wall)
groove_bottom_extension=1.5;    // How deep groove goes into bottom plate (Z direction)

// Side wall bottom extension (into bottom plate groove)
side_wall_bottom_extension=1.0; // How much side wall extends below Z=0 into bottom plate groove
side_wall_clearance=0.3;        // Clearance around side wall (reduce if too loose, increase if doesn't fit)
bottom_groove_width_adjustment=0.4; // Extra width for bottom plate groove (clearance for side wall)

// ============================================================================
// BOTTOM PLATE LIP (inner L-shape at bottom of front/back walls)
// ============================================================================
lip_enable=1;                   // 1=add lips for bottom plate support
lip_width=7;                    // How far lip extends inward from wall
lip_height=2.5;                 // Height of lip from bottom
lip_inset=2;                    // Distance from groove edge (extra clearance for printing)
lip_screw_dia=2.5;              // Screw hole diameter in lip (for self-tapping screws)
lip_screw_head_dia=5;           // Screw head diameter for countersink
lip_screw_head_depth=1.5;       // Countersink depth in bottom plate
lip_screw_inset=10;             // Distance of screws from lip ends (Y direction) - closer to side walls
lip_cutout_dia=6;               // Cutout diameter in lip for ESP32 mounting access (0=no cutout)

// ============================================================================
// ESP32 RELAY BOARD MOUNTING
// ============================================================================
esp32_board_mount=1; // 1=add mounting posts for board, 0=no posts
esp32_board_width=93; // Width of ESP32 board (along Y axis)
esp32_board_length=87; // Length of ESP32 board (along X axis)
esp32_mount_hole_dia=3.2; // Mounting hole diameter (M3)
esp32_post_dia=6; // Diameter of mounting posts
esp32_post_height=5; // Height of mounting posts above bottom plate
esp32_board_offset_x=0; // Offset from center in X direction
esp32_board_offset_y=0; // Offset from center in Y direction
esp32_corner_inset=3.5; // Distance of mounting holes from board edges
esp32_post_gusset=1; // 1=add reinforcement gussets to posts, 0=no gussets
esp32_gusset_size=4; // Size of triangular gusset at post base

// ============================================================================
// BUTTON TEXT
// ============================================================================
button_1_text="OFF";
button_2_text="PV";
button_3_text="MIN+PV";
button_4_text="FAST";
button_text = [
   [0, button_1_text],
   [1, button_2_text],
   [2, button_3_text],
   [3, button_4_text],
];

// Calculate total length
total_length = enclosure_length_auto==1 ? 
    (button_num * button_spacing_manual + 2 * button_margin) : 
    enclosure_length_custom;

// Calculate button spacing
button_spacing = button_spacing_auto==1 ? 
    (total_length - 2 * button_margin) / (button_num - 1) : 
    button_spacing_manual;

// Calculate button height (vertical center on the angled/curved panel)
button_height = button_height_auto==1 ? 
    (enclosure_height / 2) + button_height_adjustment : 
    button_height_from_bottom;

// Calculate starting offset to center buttons
button_start_offset = button_spacing_auto==1 ? 
    button_margin : 
    (total_length - (button_num - 1) * button_spacing) / 2;

// Total groove dimensions (base + adjustment)
groove_total_width = wall_thickness + groove_width_adjustment;
groove_total_depth = groove_depth + groove_depth_adjustment;

$fn=80;

module round2d(OR,IR){
    offset(OR)offset(-IR-OR)offset(IR)children();
}

// Rounded rectangle for frame
module rounded_rect(width, height, radius){
    offset(r=radius)
    offset(r=-radius)
    square([width, height], center=true);
}

// Profile for the cross-section (XZ plane)
module profile(){
    round2d(5.1,0){
        difference(){
            translate([0,-10,0]) square([enclosure_width,enclosure_height+10]);
            translate([enclosure_width,front_flat,-0.2]) rotate([0,0,slope]) square(enclosure_width+5,enclosure_height);
        }
    }
}

// Inner cavity profile
module inner_profile(){
    offset(r = -wall_thickness) profile();
}

// Main housing body
module housing_body(){
    render(convexity = 2){
        difference(){
            // Outer shell
            linear_extrude(height=total_length) profile();
            
            // Inner cavity - adjust based on what's removable
            start_z = side_walls_removable==1 ? 0 : wall_thickness;
            end_z = side_walls_removable==1 ? total_length : total_length - wall_thickness;
            
            translate([0,0,start_z])
                linear_extrude(height=end_z - start_z) 
                    inner_profile();
        }
    }
}

// Rotate and position the housing correctly
module positioned_housing(){
    difference(){
        union(){
            translate([-enclosure_width/2, 0, 0])
            rotate([90, 0, 0])
            translate([0, 0, -total_length])
            housing_body();
            
            // Add L-shaped lips at bottom of front/back walls (extending inward)
            // Lips start after groove + lip_inset for printing clearance
            if (lip_enable==1) {
                lip_start_y = groove_distance + groove_total_width + lip_inset;
                lip_length = total_length - 2 * lip_start_y;
                
                // Front lip (positive X side) - rectangle + parabolic curve on top
                // Rectangle base
                translate([enclosure_width/2 - wall_thickness - lip_width, lip_start_y, 0])
                    cube([lip_width, lip_length, lip_height]);
                // Parabolic curve on top (concave/įgaubta - curves inward, more support at bottom)
                steps = 8;
                for (i = [0:steps-1]) {
                    t1 = i / steps;
                    t2 = (i + 1) / steps;
                    // Parabola: width = lip_width * (1-t)^2 (wide at bottom, narrow at top, concave curve)
                    w1 = lip_width * (1-t1) * (1-t1);
                    z1 = lip_width * t1;
                    w2 = lip_width * (1-t2) * (1-t2);
                    z2 = lip_width * t2;
                    
                    translate([enclosure_width/2 - wall_thickness - lip_width, lip_start_y, lip_height])
                    hull(){
                        translate([lip_width - w1, 0, z1]) cube([w1, lip_length, 0.01]);
                        translate([lip_width - max(w2, 0.01), 0, z2]) cube([max(w2, 0.01), lip_length, 0.01]);
                    }
                }
                
                // Back lip (negative X side) - rectangle + parabolic curve on top
                // Rectangle base
                translate([-enclosure_width/2 + wall_thickness, lip_start_y, 0])
                    cube([lip_width, lip_length, lip_height]);
                // Parabolic curve on top (concave)
                for (i = [0:steps-1]) {
                    t1 = i / steps;
                    t2 = (i + 1) / steps;
                    w1 = lip_width * (1-t1) * (1-t1);
                    z1 = lip_width * t1;
                    w2 = lip_width * (1-t2) * (1-t2);
                    z2 = lip_width * t2;
                    
                    translate([-enclosure_width/2 + wall_thickness, lip_start_y, lip_height])
                    hull(){
                        translate([0, 0, z1]) cube([w1, lip_length, 0.01]);
                        translate([0, 0, z2]) cube([max(w2, 0.01), lip_length, 0.01]);
                    }
                }
            }
            
        }
        
        // Cut bottom opening for removable plate - now smaller (between lips)
        if (bottom_plate_removable==1) {
            translate([-enclosure_width/2 + wall_thickness + lip_width, -1, -10])
                cube([enclosure_width - 2*wall_thickness - 2*lip_width, total_length + 2, wall_thickness + 15]);
        }
        
        // Cut bottom rounded edge - slice off everything below Z=0
        translate([-enclosure_width, -1, -20])
            cube([enclosure_width * 2, total_length + 2, 20]);
        
        // Screw holes in lips (for bottom plate mounting) - 6 holes total, 3 per lip
        if (lip_enable==1) {
            lip_start_y = groove_distance + groove_total_width;
            lip_length = total_length - 2 * lip_start_y;
            lip_screw_x_front = enclosure_width/2 - wall_thickness - lip_width/2;
            lip_screw_x_back = -enclosure_width/2 + wall_thickness + lip_width/2;
            
            // Front lip screws (3 holes)
            translate([lip_screw_x_front, lip_start_y + lip_screw_inset, -1])
                cylinder(h=lip_height + 2, d=lip_screw_dia);
            translate([lip_screw_x_front, lip_start_y + lip_length/2, -1])
                cylinder(h=lip_height + 2, d=lip_screw_dia);
            translate([lip_screw_x_front, lip_start_y + lip_length - lip_screw_inset, -1])
                cylinder(h=lip_height + 2, d=lip_screw_dia);
            
            // Back lip screws (3 holes)
            translate([lip_screw_x_back, lip_start_y + lip_screw_inset, -1])
                cylinder(h=lip_height + 2, d=lip_screw_dia);
            translate([lip_screw_x_back, lip_start_y + lip_length/2, -1])
                cylinder(h=lip_height + 2, d=lip_screw_dia);
            translate([lip_screw_x_back, lip_start_y + lip_length - lip_screw_inset, -1])
                cylinder(h=lip_height + 2, d=lip_screw_dia);
            
            // Cutouts for ESP32 mounting access - positioned at ESP32 post centers
            if (lip_cutout_dia > 0 && esp32_board_mount==1) {
                // ESP32 mounting positions (same as esp32_mounting_posts, relative to enclosure center)
                esp32_y1 = total_length/2 - esp32_board_width/2 + esp32_corner_inset + esp32_board_offset_y;
                esp32_y2 = total_length/2 + esp32_board_width/2 - esp32_corner_inset + esp32_board_offset_y;
                esp32_x_front = esp32_board_length/2 - esp32_corner_inset + esp32_board_offset_x;
                esp32_x_back = -esp32_board_length/2 + esp32_corner_inset + esp32_board_offset_x;
                
                // Front lip cutouts at ESP32 post X position (height covers lip + parabola)
                translate([esp32_x_front, esp32_y1, -1])
                    cylinder(h=lip_height + lip_width + 2, d=lip_cutout_dia);
                translate([esp32_x_front, esp32_y2, -1])
                    cylinder(h=lip_height + lip_width + 2, d=lip_cutout_dia);
                
                // Back lip cutouts at ESP32 post X position
                translate([esp32_x_back, esp32_y1, -1])
                    cylinder(h=lip_height + lip_width + 2, d=lip_cutout_dia);
                translate([esp32_x_back, esp32_y2, -1])
                    cylinder(h=lip_height + lip_width + 2, d=lip_cutout_dia);
            }
        }
        
        // GROOVES
        groove_left();
        groove_right();
    }
}

// Groove shape - follows profile contour
module groove_shape(){
    difference(){
        offset(r = -wall_thickness + groove_total_depth) profile();  // outer edge (deeper into wall)
        offset(r = -wall_thickness) profile();                        // inner surface
    }
}

module groove_left(){
    // Left groove - outer edge fixed at Y = groove_distance, extends inward
    translate([-enclosure_width/2, groove_distance + groove_total_width, 0])
    rotate([90, 0, 0])
    linear_extrude(height=groove_total_width)
        groove_shape();
    
    // Extend groove straight down to Z=0 (front and back walls)
    translate([-enclosure_width/2 + wall_thickness - groove_total_depth, groove_distance, 0])
        cube([groove_total_depth, groove_total_width, 10]);
    translate([enclosure_width/2 - wall_thickness, groove_distance, 0])
        cube([groove_total_depth, groove_total_width, 10]);
}

module groove_right(){
    // Right groove - outer edge fixed at Y = total_length - groove_distance, extends inward
    translate([-enclosure_width/2, total_length - groove_distance, 0])
    rotate([90, 0, 0])
    linear_extrude(height=groove_total_width)
        groove_shape();
    
    // Extend groove straight down to Z=0
    translate([-enclosure_width/2 + wall_thickness - groove_total_depth, total_length - groove_distance - groove_total_width, 0])
        cube([groove_total_depth, groove_total_width, 10]);
    translate([enclosure_width/2 - wall_thickness, total_length - groove_distance - groove_total_width, 0])
        cube([groove_total_depth, groove_total_width, 10]);
}

// All button holes - YOUR ORIGINAL CODE
module button_holes(){
    // Calculate the front panel position
    front_x = enclosure_width/2 * cos(slope);
    
    for (i = [0:1:button_num-1]){
        translate([front_x, button_start_offset + i*button_spacing, button_height])
        rotate([0, 90 - slope, 0]) // Rotate to be perpendicular to the angled panel
        cylinder(h=200, d=hole_dia, center=true);
    }
}

// All button text labels
module button_labels(){
    if (text_on_slope==0) {
        // Text on front vertical panel
        front_x = enclosure_width/2 - 1;
        
        for (a = button_text){
            translate([front_x, button_start_offset + a[0]*button_spacing, text_height])
            rotate([90, 0, 90])
            linear_extrude(height=text_depth + 1)
            text(text=str(a[1]), size=text_size, halign="center", valign="center", font="Liberation Sans:style=Bold");
        }
    } else {
        // Text on slope panel - same positioning logic as button_holes
        front_x = enclosure_width/2 * cos(slope);
        
        for (a = button_text){
            translate([front_x, button_start_offset + a[0]*button_spacing, button_height - text_slope_offset])
            rotate([0, 90 - slope, 0])
            rotate([0, 0, 90])
            translate([0, 0, -50])
            linear_extrude(height=100)
            text(text=str(a[1]), size=text_size, halign="center", valign="center", font="Liberation Sans:style=Bold");
        }
        
        // Secondary text on front panel (only engraved version here, raised is added separately)
        if (text2_enable==1 && text2_raised==0) {
            front_x2 = enclosure_width/2 - 1;
            
            // Calculate frame dimensions
            frame_width = len(text2_content) * text2_size * 0.7 + text2_frame_padding * 2;
            frame_height = text2_size + text2_frame_padding * 2;
            
            translate([front_x2, total_length/2, text2_height])
            rotate([90, 0, 90])
            linear_extrude(height=text2_depth + 1)
            union(){
                // Text
                text(text=text2_content, size=text2_size, halign="center", valign="center", font="Liberation Sans:style=Bold");
                
                // Frame (if enabled)
                if (text2_frame==1) {
                    difference(){
                        rounded_rect(frame_width, frame_height, text2_frame_radius);
                        rounded_rect(frame_width - text2_frame_thickness*2, frame_height - text2_frame_thickness*2, text2_frame_radius);
                    }
                }
            }
        }
    }
}

// Raised text2 module (to be added to main body)
module text2_raised_geometry(){
    if (text2_enable==1 && text2_raised==1 && text_on_slope==1) {
        front_x2 = enclosure_width/2;
        
        // Calculate frame dimensions
        frame_width = len(text2_content) * text2_size * 0.7 + text2_frame_padding * 2;
        frame_height = text2_size + text2_frame_padding * 2;
        
        translate([front_x2, total_length/2, text2_height])
        rotate([90, 0, 90])
        linear_extrude(height=text2_depth)
        union(){
            // Text
            text(text=text2_content, size=text2_size, halign="center", valign="center", font="Liberation Sans:style=Bold");
            
            // Frame (if enabled)
            if (text2_frame==1) {
                difference(){
                    rounded_rect(frame_width, frame_height, text2_frame_radius);
                    rounded_rect(frame_width - text2_frame_thickness*2, frame_height - text2_frame_thickness*2, text2_frame_radius);
                }
            }
        }
    }
}

// LED board holes - stepped holes with parabolic transition + screw holes
// X position follows slope surface based on Z, rotation always perpendicular to slope
module led_board_holes(){
    if (led_board_enable==1 && led_count > 0) {
        // Base position on slope
        led_z_base = enclosure_height - led_board_from_top;
        led_y_center = total_length / 2 + led_board_position_y;
        led_start_y = led_y_center - (led_count - 1) * led_spacing / 2;
        
        // Calculate base X position on slope surface
        z_from_top = enclosure_height - led_z_base;
        base_x = enclosure_width/2 - z_from_top / tan(slope);
        
        // led_board_slide moves WHOLE BOARD along slope direction
        // Positive = toward buttons (up the slope), Negative = away from buttons
        slide_dz = led_board_slide * sin(slope);
        slide_dx = -led_board_slide * cos(slope);
        
        // Board center position (after slide)
        board_z = led_z_base + slide_dz;
        board_x = base_x + slide_dx;
        
        // led_vertical_offset is for LED position relative to board center
        // Also moves along slope direction
        led_offset_dz = led_vertical_offset * sin(slope);
        led_offset_dx = -led_vertical_offset * cos(slope);
        
        // Final LED position
        led_z = board_z + led_offset_dz;
        led_x = board_x + led_offset_dx;
        
        // LED holes - always perpendicular to slope
        for (i = [0:led_count-1]) {
            led_y = led_start_y + i * led_spacing;
            
            translate([led_x, led_y, led_z])
            rotate([0, 90 - slope, 0])
            led_hole_shape();
        }
        
        // Screw holes for LED board mounting (4 corners)
        // Use board position (not LED position) + screw offsets
        if (led_screw_enable==1) {
            for (dy = [-led_screw_spacing_x/2, led_screw_spacing_x/2]) {
                for (dz = [-led_screw_spacing_y/2, led_screw_spacing_y/2]) {
                    // dz offset along slope
                    screw_offset_dz = (led_screw_offset_z + dz) * sin(slope);
                    screw_offset_dx = -(led_screw_offset_z + dz) * cos(slope);
                    
                    screw_z = board_z + screw_offset_dz;
                    screw_x = board_x + screw_offset_dx;
                    
                    translate([screw_x, led_y_center + dy, screw_z])
                    rotate([0, 90 - slope, 0])
                    cylinder(h=200, d=led_screw_hole_dia, center=true);
                }
            }
        }
    }
}

// Individual LED hole shape with parabolic transition
// Z=0 is the wall surface, cylinder goes through wall
module led_hole_shape(){
    // Outside hole (smaller diameter) - goes through entire wall
    // Centered so it cuts through properly
    cylinder(h=200, d=led_hole_dia_outside, center=true);
    
    // Parabolic transition starts at Z=-1 (1mm inside from surface)
    // and goes inward (more negative Z = into enclosure)
    parabola_steps = 10;
    for (j = [0:parabola_steps-1]) {
        t1 = j / parabola_steps;
        t2 = (j + 1) / parabola_steps;
        d1 = led_hole_dia_outside + (led_hole_dia_inside - led_hole_dia_outside) * t1;
        d2 = led_hole_dia_outside + (led_hole_dia_inside - led_hole_dia_outside) * t2;
        z1 = -1 - t1 * led_hole_depth;
        z2 = -1 - t2 * led_hole_depth;
        
        translate([0, 0, z2])
        cylinder(h=abs(z2-z1)+0.01, d1=d2, d2=d1, center=false);
    }
    
    // Inside hole (larger diameter) - continues inward (negative Z)
    translate([0, 0, -1 - led_hole_depth - 100])
    cylinder(h=100, d=led_hole_dia_inside, center=false);
}

// Screw positions for bottom plate
function bottom_screw_positions() = [
    [screw_inset_from_edge, screw_inset_from_edge],
    [screw_inset_from_edge, total_length - screw_inset_from_edge],
    [enclosure_width - screw_inset_from_edge, screw_inset_from_edge],
    [enclosure_width - screw_inset_from_edge, total_length - screw_inset_from_edge]
];

// Bottom plate bosses - DISABLED
module body_screw_bosses(){
    // Removed - using different fixation method
}

// Side wall bosses - DISABLED
module side_wall_screw_bosses(){
    // Removed - using different fixation method
}

// ESP32 board mounting posts - centered on bottom plate, with optional gussets
module esp32_mounting_posts(){
    // Calculate clearance between posts and lips
    // Front lip inner edge X: enclosure_width/2 - wall_thickness - lip_width
    // Back lip inner edge X: -enclosure_width/2 + wall_thickness + lip_width
    // Front post X: esp32_board_length/2 - esp32_corner_inset
    // Back post X: -esp32_board_length/2 + esp32_corner_inset
    
    front_lip_x = enclosure_width/2 - wall_thickness - lip_width;
    back_lip_x = -enclosure_width/2 + wall_thickness + lip_width;
    front_post_x = esp32_board_length/2 - esp32_corner_inset + esp32_board_offset_x;
    back_post_x = -esp32_board_length/2 + esp32_corner_inset + esp32_board_offset_x;
    
    post_radius = esp32_post_dia/2;
    gusset_reach = esp32_post_dia/2 + esp32_gusset_size;
    
    // Clearance between post edge and lip
    front_clearance = front_lip_x - front_post_x - post_radius;
    back_clearance = back_post_x - back_lip_x - post_radius;
    
    // Check if gusset fits (need clearance > gusset_size)
    front_gusset_fits = front_clearance > esp32_gusset_size;
    back_gusset_fits = back_clearance > esp32_gusset_size;
    
    // Build gusset angle arrays based on clearance
    back_post_angles = back_gusset_fits ? [0, 90, 180, 270] : [0, 90, 270];
    front_post_angles = front_gusset_fits ? [0, 90, 180, 270] : [90, 180, 270];
    
    mount_data = [
        // Back-left post (-X, -Y)
        [[-esp32_board_length/2 + esp32_corner_inset + esp32_board_offset_x, -esp32_board_width/2 + esp32_corner_inset + esp32_board_offset_y], back_post_angles],
        // Back-right post (-X, +Y)
        [[-esp32_board_length/2 + esp32_corner_inset + esp32_board_offset_x, +esp32_board_width/2 - esp32_corner_inset + esp32_board_offset_y], back_post_angles],
        // Front-left post (+X, -Y)
        [[+esp32_board_length/2 - esp32_corner_inset + esp32_board_offset_x, -esp32_board_width/2 + esp32_corner_inset + esp32_board_offset_y], front_post_angles],
        // Front-right post (+X, +Y)
        [[+esp32_board_length/2 - esp32_corner_inset + esp32_board_offset_x, +esp32_board_width/2 - esp32_corner_inset + esp32_board_offset_y], front_post_angles]
    ];
    
    for (data = mount_data) {
        pos = data[0];
        gusset_angles = data[1];
        
        translate([pos[0], pos[1], 0]) {
            difference(){
                union(){
                    // Main post cylinder - starts BELOW bottom plate surface to ensure connection
                    translate([0, 0, -1])
                    cylinder(h=esp32_post_height + 1, d=esp32_post_dia, center=false);
                    
                    // Reinforcement gussets
                    if (esp32_post_gusset==1) {
                        for (angle = gusset_angles) {
                            rotate([0, 0, angle])
                            translate([0, -1, 0])
                            hull(){
                                // Base point - on bottom plate, away from post (also goes into plate)
                                translate([esp32_post_dia/2 + esp32_gusset_size, 0, -1])
                                cube([0.1, 2, 0.1]);
                                
                                // Top point - at post CENTER, at gusset height
                                translate([0, 0, esp32_gusset_size])
                                cube([0.1, 2, 0.1]);
                                
                                // Base point at post CENTER (goes into plate)
                                translate([0, 0, -1])
                                cube([0.1, 2, 0.1]);
                            }
                        }
                    }
                }
                // Screw hole through entire post AND gussets
                translate([0, 0, -2])
                    cylinder(h=esp32_post_height + 4, d=esp32_mount_hole_dia, center=false);
            }
        }
    }
}

// Bottom plate with grooves for side walls - exact same size as main body
module bottom_plate(){
    plate_width = enclosure_width;  // Exact same as main body
    plate_length = total_length;     // Exact same as main body
    
    // Side wall width calculation (same as in side_wall_panel)
    side_wall_clearance = 0.2;
    side_wall_offset = -wall_thickness - side_wall_clearance + groove_depth;
    side_wall_width = enclosure_width + 2 * side_wall_offset;
    groove_width_for_side_wall = side_wall_width + bottom_groove_width_adjustment;
    
    translate([-plate_width/2, 0, 0]) {
        difference(){
            union(){
                cube([plate_width, plate_length, wall_thickness]);
                
                if (esp32_board_mount==1) {
                    // Center posts on plate
                    translate([plate_width/2, plate_length/2, wall_thickness])
                        esp32_mounting_posts();
                }
            }
            
            // Groove for left side wall - matches side wall width + adjustment
            translate([(plate_width - groove_width_for_side_wall)/2, groove_distance, wall_thickness - groove_bottom_extension])
                cube([groove_width_for_side_wall, groove_total_width, groove_bottom_extension + 0.1]);
            
            // Groove for right side wall - matches side wall width + adjustment
            translate([(plate_width - groove_width_for_side_wall)/2, plate_length - groove_distance - groove_total_width, wall_thickness - groove_bottom_extension])
                cube([groove_width_for_side_wall, groove_total_width, groove_bottom_extension + 0.1]);
            
            // Screw holes with countersink for lip mounting (4 holes)
            if (lip_enable==1) {
                lip_start_y = groove_distance + groove_total_width + lip_inset;
                lip_length = total_length - 2 * lip_start_y;
                // X positions matching lip centers
                lip_screw_x_front = plate_width - wall_thickness - lip_width/2;
                lip_screw_x_back = wall_thickness + lip_width/2;
                
                // Front lip screws (3 holes)
                translate([lip_screw_x_front, lip_start_y + lip_screw_inset, -0.1]){
                    cylinder(h=wall_thickness + 1, d=lip_screw_dia + 0.3);
                    cylinder(h=lip_screw_head_depth + 0.1, d1=lip_screw_head_dia, d2=lip_screw_dia + 0.3);
                }
                translate([lip_screw_x_front, lip_start_y + lip_length/2, -0.1]){
                    cylinder(h=wall_thickness + 1, d=lip_screw_dia + 0.3);
                    cylinder(h=lip_screw_head_depth + 0.1, d1=lip_screw_head_dia, d2=lip_screw_dia + 0.3);
                }
                translate([lip_screw_x_front, lip_start_y + lip_length - lip_screw_inset, -0.1]){
                    cylinder(h=wall_thickness + 1, d=lip_screw_dia + 0.3);
                    cylinder(h=lip_screw_head_depth + 0.1, d1=lip_screw_head_dia, d2=lip_screw_dia + 0.3);
                }
                
                // Back lip screws (3 holes)
                translate([lip_screw_x_back, lip_start_y + lip_screw_inset, -0.1]){
                    cylinder(h=wall_thickness + 1, d=lip_screw_dia + 0.3);
                    cylinder(h=lip_screw_head_depth + 0.1, d1=lip_screw_head_dia, d2=lip_screw_dia + 0.3);
                }
                translate([lip_screw_x_back, lip_start_y + lip_length/2, -0.1]){
                    cylinder(h=wall_thickness + 1, d=lip_screw_dia + 0.3);
                    cylinder(h=lip_screw_head_depth + 0.1, d1=lip_screw_head_dia, d2=lip_screw_dia + 0.3);
                }
                translate([lip_screw_x_back, lip_start_y + lip_length - lip_screw_inset, -0.1]){
                    cylinder(h=wall_thickness + 1, d=lip_screw_dia + 0.3);
                    cylinder(h=lip_screw_head_depth + 0.1, d1=lip_screw_head_dia, d2=lip_screw_dia + 0.3);
                }
            }
        }
    }
}

// Side wall panel - fits into main body groove, extends into bottom plate groove
module side_wall_panel(){
    side_wall_offset = -wall_thickness - side_wall_clearance + groove_depth;
    
    union(){
        // Main panel - profile with bottom cut off at Y=0
        difference(){
            linear_extrude(height=wall_thickness)
                offset(r = side_wall_offset)
                    profile();
            
            // Cut everything below Y=0 (the rounded bottom part)
            translate([-enclosure_width, -20, -0.1])
                cube([enclosure_width * 3, 20, wall_thickness + 1]);
        }
        
        // Bottom extension - uses same offset profile, intersected with bottom strip
        translate([0, 0, 0])
        linear_extrude(height=wall_thickness)
            intersection(){
                offset(r = side_wall_offset) profile();
                translate([-enclosure_width, -side_wall_bottom_extension])
                    square([enclosure_width * 3, side_wall_bottom_extension + 0.1]);
            }
    }
}

// DC socket hole cutout
module dc_socket_hole(){
    if (dc_socket_enable==1) {
        socket_x = dc_socket_from_back;
        socket_y = dc_socket_from_bottom;
        
        translate([socket_x, socket_y, -0.1])
            cylinder(h=wall_thickness + 0.2, d=dc_socket_dia, center=false);
    }
}

// Left side wall panel (viewed from front) - dc_socket_side: 0=left, 2=both
module left_side_wall_panel(){
    difference(){
        side_wall_panel();
        if (dc_socket_side==0 || dc_socket_side==2) dc_socket_hole();
    }
}

// Right side wall panel (viewed from front) - dc_socket_side: 1=right, 2=both
module right_side_wall_panel(){
    difference(){
        side_wall_panel();
        if (dc_socket_side==1 || dc_socket_side==2) dc_socket_hole();
    }
}

module left_side_wall(){
    translate([-enclosure_width/2, wall_thickness, 0])
    rotate([90, 0, 0])
    side_wall_panel();
}

module right_side_wall(){
    translate([-enclosure_width/2, -total_length, 0])
    rotate([90, 0, 0])
    side_wall_panel();
}

// Main body assembly
module main_body_assembly(){
    union(){
        difference(){
            positioned_housing();
            button_holes();
            led_board_holes();
            if (dotext==1) button_labels();
        }
        
        body_screw_bosses();
        side_wall_screw_bosses();
        text2_raised_geometry();
    }
}

// ============ RENDER ============
if (part_to_render == 0) {
    // Show all parts assembled in correct positions
    
    // Bottom plate at Z=0
    if (bottom_plate_removable==1) {
        color("SteelBlue")
        bottom_plate();
    }
    
    // Main body raised by wall_thickness
    translate([0, 0, wall_thickness])
    main_body_assembly();
    
    // Side walls - moved outward to show interior
    // Nice side (Z=0 when printing) must face OUTWARD
    if (side_walls_removable==1) {
        // Left side wall (Y=0 side, viewed from front) - rotated so Z=0 faces outward (-Y)
        color("CadetBlue")
        translate([-enclosure_width/2, groove_distance - 160 + wall_thickness, wall_thickness])
        rotate([90, 0, 0])
        mirror([0, 0, 1])
        left_side_wall_panel();
        
        // Right side wall (Y=total_length side, viewed from front) - rotated so Z=0 faces outward (+Y)
        color("CadetBlue")
        translate([-enclosure_width/2, total_length - groove_distance + 20, wall_thickness])
        rotate([90, 0, 0])
        right_side_wall_panel();
    }
    
} else if (part_to_render == 1) {
    main_body_assembly();
    
} else if (part_to_render == 2) {
    bottom_plate();
    
} else if (part_to_render == 3) {
    // Left side wall (viewed from front) - nice side down for printing
    left_side_wall_panel();
    
} else if (part_to_render == 4) {
    // Right side wall (viewed from front) - nice side down for printing
    mirror([0, 1, 0])
    right_side_wall_panel();
    
} else if (part_to_render == 5) {
    // Both side walls - nice sides down for printing
    // Left side wall
    left_side_wall_panel();
    
    // Right side wall - offset along Y
    translate([0, -enclosure_height - 10, 0])
    mirror([0, 1, 0])
    right_side_wall_panel();
    
} else if (part_to_render == 6) {
    // DEBUG: Show LED holes as separate colored object
    translate([0, 0, wall_thickness])
    color("Red", 0.8)
    led_board_holes_debug();
    
    // Show main body transparent for reference
    translate([0, 0, wall_thickness])
    color("Yellow", 0.3)
    positioned_housing();
}

// DEBUG module - LED holes as solid objects (not cuts)
module led_board_holes_debug(){
    if (led_board_enable==1 && led_count > 0) {
        led_z_base = enclosure_height - led_board_from_top;
        led_y_center = total_length / 2 + led_board_position_y;
        led_start_y = led_y_center - (led_count - 1) * led_spacing / 2;
        
        z_from_top = enclosure_height - led_z_base;
        base_x = enclosure_width/2 - z_from_top / tan(slope);
        
        slide_dz = led_board_slide * sin(slope);
        slide_dx = -led_board_slide * cos(slope);
        
        board_z = led_z_base + slide_dz;
        board_x = base_x + slide_dx;
        
        led_offset_dz = led_vertical_offset * sin(slope);
        led_offset_dx = -led_vertical_offset * cos(slope);
        
        led_z = board_z + led_offset_dz;
        led_x = board_x + led_offset_dx;
        
        // LED holes
        for (i = [0:led_count-1]) {
            led_y = led_start_y + i * led_spacing;
            
            translate([led_x, led_y, led_z])
            rotate([0, 90 - slope, 0])
            led_hole_shape_debug();
        }
        
        // Screw holes
        if (led_screw_enable==1) {
            for (dy = [-led_screw_spacing_x/2, led_screw_spacing_x/2]) {
                for (dz = [-led_screw_spacing_y/2, led_screw_spacing_y/2]) {
                    screw_offset_dz = (led_screw_offset_z + dz) * sin(slope);
                    screw_offset_dx = -(led_screw_offset_z + dz) * cos(slope);
                    
                    screw_z = board_z + screw_offset_dz;
                    screw_x = board_x + screw_offset_dx;
                    
                    translate([screw_x, led_y_center + dy, screw_z])
                    rotate([0, 90 - slope, 0])
                    color("Blue")
                    cylinder(h=50, d=led_screw_hole_dia, center=true);
                }
            }
        }
    }
}

// DEBUG version of LED hole shape - visible as solid
module led_hole_shape_debug(){
    // Outside hole - centered, goes through wall
    color("Red")
    cylinder(h=30, d=led_hole_dia_outside, center=true);
    
    // Parabolic transition (starts at Z=-1, goes negative/inward)
    color("Orange")
    for (j = [0:9]) {
        t1 = j / 10;
        t2 = (j + 1) / 10;
        d1 = led_hole_dia_outside + (led_hole_dia_inside - led_hole_dia_outside) * t1;
        d2 = led_hole_dia_outside + (led_hole_dia_inside - led_hole_dia_outside) * t2;
        z1 = -1 - t1 * led_hole_depth;
        z2 = -1 - t2 * led_hole_depth;
        
        translate([0, 0, z2])
        cylinder(h=abs(z2-z1)+0.01, d1=d2, d2=d1, center=false);
    }
    
    // Inside hole (negative Z = inward)
    color("Green")
    translate([0, 0, -1 - led_hole_depth - 30])
    cylinder(h=30, d=led_hole_dia_inside, center=false);
}
