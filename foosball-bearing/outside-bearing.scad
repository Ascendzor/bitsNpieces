use <threadlib/threadlib.scad>

circlusion = 256;

MY_THREAD_TABLE = [
//["special", [pitch, Rrot, Dsupport, [[r0, z0], [r1, z1], ..., [rn, zn]]]]
  ["M1-ext", [0.25, 0.3065, 0.6620, [[0, -0.1146], [0, 0.1146], [0.1678, 0.0178], [0.1678, -0.0178]]]],
  ["custom-foos", [2.5, 11, 0, [[0, -1.5], [0, 1.5], [2, 0], [2, 0]]]],
  ["custom-foos-next", [1.1, 10, 0, [[0, -.5], [0, .5], [.5, 0], [.5, 0]]]],
];

difference() {
  cylinder(h=2, r=48/2, $fn=256);

  translate([0, 0, -1])
  cylinder(h=4, r=22/2, $fn=256);
}

difference() {
  cylinder(h=12, r=22/2, $fn=256);

  translate([0, 0, -1])
  cylinder(h=14, r=20.1/2, $fn=256);

  thread("custom-foos-next", turns=12, table=MY_THREAD_TABLE);
}