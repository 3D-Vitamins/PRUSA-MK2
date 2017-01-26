use <threads.scad>

threads = 4;    // 4 for Tr8x8, 2 for Tr8x4
height = 16;
threaddiameter = 8.5; // outer thread diameter - varies by printing material
test = false;   // test=true shows screw only

module screw() {
    thrs = 2;
    translate([0,0,-2])
        metric_thread(diameter=threaddiameter, thread_size=thrs, rectangle=2/thrs, pitch=2,
            n_starts=threads, length=height+2, internal=true);
}

module nut_body() {
    difference() {
        union() {
            cylinder (h=4, r=12.5, $fn=48);
            cylinder (h=height, r=6.5, $fn=48);
        }
        translate([-9.5,0,-2]) cylinder(h=14, r=1.6, $fn=48);
        translate([+9.5,0,-2]) cylinder(h=14, r=1.6, $fn=48);
        translate([0,0,-0.5]) cylinder(h=4, r1=5, r2=0, $fn=48);
        translate([0,0,height-3.5]) cylinder(h=4, r1=0, r2=5, $fn=48);
    }
}

if (test) {
    screw();
} else {
    difference() {
        nut_body();
        screw();
    }
}