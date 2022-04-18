circlusion = 256;

module base() {
  difference() {
    cylinder(h=4, r = 48/2, $fn=circlusion);

    translate([0, 0, -1])
    cylinder(h=6, r = 25/2, $fn=circlusion);
  }
}

difference() {
  union() {
    
    base();
    translate([0, 0, 4]) {
      difference() {
        cylinder(h=5, r = 35/2, $fn=circlusion);
        translate([0, 0, -1])
        cylinder(h=8, r = 30/2, $fn=circlusion);
      }

      translate([0, 0, 5]) {
        difference() {
          cylinder(h=8, r1=35/2, r2=18/2, $fn=circlusion);

          translate([0, 0, -0.001])
          cylinder(h=8, r1=30/2, r2=13/2, $fn=circlusion);
        }
        
        translate([0, 0, 6]) {
          cylinder(h=16, r=20/2, $fn=circlusion);
        }
      }
    }
  }

  translate([0, 0, -1])
  cylinder(h=100, r=18/2, $fn=circlusion);
  
  // Uncomment this to split the part in half
  // translate([0, -50, -1])
  // cube(100, 100, 100);
}