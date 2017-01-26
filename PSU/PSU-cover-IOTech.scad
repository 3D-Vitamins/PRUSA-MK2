// PRUSA iteration3
// PSU Cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module PSU_COVER()
{
difference(){
union(){
    
translate([0,0,-1])cube([95+17.5-1,50+15+10,56]); // Base

translate([0,0,51])cube([14.5+10,33+71+10,5]); // Stütze bei 61mm über Blechanfang + 10mm Fleisch

translate([100-7,40,51])cube([14,71+3,5]); // Back pillar 2
translate([100-7,38.5,52-3.5-1])rotate([45,0,0])cube([14,sqrt(2)*5,5]); // Printramp

//translate([91+4,0,-1])cube([6,50+15+30,56]); // Base for bracket

//translate([-2,45.4-4.6,19])cube([2,3,15]); // nipple on the right


//translate([0,35,46.5])scale([1.2,1,0.2])rotate([-28,-50,-58])cube([45,45,30]);


//translate([94,20,13])scale([0.2,1.2,1])rotate([-29,-51,-48])cube([30,35,30]);
//translate([10,25,45])scale([1,1,0.3])rotate([-40,-50,-58])cube([40,30,30]);

//translate([-1.6,0,0])cube([1.65,65+10,2]); // Frame skirt 1
translate([-1.6,0,0])cube([1.65,34+10,55]); // Frame skirt 2
translate([-1.6,0,52])cube([113.1,75+39,3]); // Frame skirt 3

//Back Stabelizer  
translate([110-1.5,65,52-20])cube([3,20,20]); // Frame skirt 3
  
 
}


//pretty corners
translate([-11,-2,-2])rotate([0,0,-45])cube([10,10,58]);
translate([95-3+5+1+11,-2,-2])rotate([0,0,-45])cube([10,10,58]);


translate([-3,-9,-5])rotate([-45,0,0])cube([130,10,10]);
translate([-3,-12,56])rotate([-45,0,0])cube([130,10,20]);

translate([-3,45+15+10,-5])rotate([-45,0,0])cube([130,10,10]);
translate([-3,48+15+35+10,60])rotate([-45,0,0])cube([130,10,20]);

translate([95-3+3+20,70,-2])rotate([0,0,-45])cube([10,10,58]);

translate([95+18.5,0-10,-20])rotate([0,-45,-45])cube([20,20,20]);
translate([95+18.5,0-10,45])rotate([0,-45,-45])cube([20,20,20]);


translate([95+18.5,60,-10])rotate([-35,-45,-45])cube([20,20,20]);
translate([95+18.5,60,65])rotate([-55,48,-48])cube([20,20,20]);

translate([79+18.5,-5,68.5])rotate([0,45,0])cube([20,90+30,20]);

translate([79+18.5,-5,-14.5])rotate([0,45,0])cube([20,90,20]);


translate([-14-0.1,-5,69.1])rotate([0,45,0])cube([20,90+35,20]);

translate([3,2,2+5])cube([89.02+20-8,50.02+15+30,50.02-0.7-7]); // main cutout
translate([3,2,2+5-5])cube([89.02+20-8+5,40,50.02-0.7-7+5]); // main cutout

//translate([-3,50-16.4+15,2])cube([100,16.5,50-0.7]); // insert cutout

translate([-3,34+10+11,2+50.2-50])cube([10,100,50]); // right bottom cutout

translate([85+2+13-0.5,34+10+11,2])cube([10,100,50-0.7]); //hinten 
translate([0,34+10+11,1.9])cube([109.5,100,6]); // Rand Links (höher)


translate([-3,34+10,2+50.2-15])cube([112.5,100,15]); //  Rand rechts

translate([5.5,0,0]){
translate([45.3-0.5,4.3-0.5,40])cube([46.4+1,26.9+1,30]); // socket cutout
translate([43,2,23.8])cube([51,31.5,30]); // socket holding Border

    
//translate([45-4.5,2+15.6,40])cylinder(r=2,h=50, $fn=8); // socket right hole cutout
//translate([45-4.5+37-0.5,2+15.6,40])cylinder(r=2,h=50, $fn=8); // socket left hole cutout

//translate([1,2,44])cube([20,14,30]); // switch cutout

//translate([45-4.5+37-0.5,2+15.6,40])cylinder(r=3.25,h=15-1.5, $fn=6); // socket left hole cutout nuttrap
//translate([45-4.5,2+15.6,40])cylinder(r=3.25,h=15-1.5, $fn=6); // socket left hole cutout nuttrap
}



translate([28,80,54.5])linear_extrude(height = 1) {
       text("silent",size=7, center=true,font="Lucida Calligraphy");
     }
translate([28,68,54.5])linear_extrude(height = 1) {
       text("i3-MK2",size=10, center=true,font="Arial Black");
     }
translate([28,50,54.5])linear_extrude(height = 1) {
       text("3D-VITAMINS.EU",size=5, center=true,font="Arial Black");
     }


/*
translate([8,40-1+15,40])cylinder(r=2,h=50,$fn=15); //  left front mounthole cutout
translate([8,40-1+15,53.6])cylinder(r1=2, r2=3.5,h=1.5,$fn=15);

translate([87,40-1+15,40])cylinder(r=2,h=50,$fn=15); //  right front mounthole cutout
translate([87,40-1+15,53.6])cylinder(r1=2, r2=3.5,h=1.5,$fn=15);
*/

translate([14.5-0.8,34+61+10-0.5,-10+50])cylinder(r=2,h=50,$fn=15); //  left back mounthole cutout
 translate([14.5-0.8,34+61+10-0.5,-3.7+59.3-1])cylinder(r2=3.5, r1=2,h=1.5,$fn=15);

translate([100-1.5,34+61+10-0.5,-10+50])cylinder(r=2,h=50,$fn=15); //  right back mounthole cutout
translate([100-1.5,34+61+10-0.5,-3.7+59.3-1])cylinder(r2=3.5, r1=2,h=1.5,$fn=15);


//translate([130,32+26,55-4-25])rotate([0,-90,0])cylinder(r=2.5,h=50,$fn=35); // Left side bracket screw hole
//translate([101.1,32+26,55-4-25])rotate([0,-90,0])cylinder(r2=2.5, r1=4.1,h=3,$fn=15);

for(i=[0:10]){
translate([20+i,6,-10])cylinder(r=3,h=50); //  left back mounthole cutout
}



}
// Socket Corners
    translate([46+47,3.5,52.2+1.6])rotate([0,0,-45])cube([3,7,1.2]); // socket cutout
    translate([46+52,3.5+23.6,52.2+1.6])rotate([0,0,45])cube([3,7,1.2]); // socket cutout

// Fixing Bits mount side
 translate([-1,34+5.6+10+1,3+7-1.5])rotate([0,90,0])cylinder(r2=1.7, r1=0.8,h=1.2,$fn=15);
translate([-1,34+5.6+10+1,3+7+10.5-1.5])rotate([0,90,0])cylinder(r2=1.7, r1=0.8,h=1.2,$fn=15);

//InnerBorder Printing Ramp
translate([3,39.2,-0.1])rotate([45,0,0])cube([89.02+20-8+5,7,3]); // main cutout
translate([109,37,0.])rotate([0,0,45])cube([3,7,50]); // main cutout



//Test PSU dim plate
  // translate([-1.5,61,2])cube([110.5,5,50.5]); // socket cutout


}

module PSU_Y_REINFORCEMENT()
{
difference()
{
    union()     // base shape
        {
            translate([ 59.5, 0, -18 ]) cube([ 33, 6, 19 ]);  // reinforcement plate
            translate([ 73.5, 5, -18 ]) cube([ 5, 16, 19 ]);  // vertical_reinforcement    
        }
    union ()    // cutouts
        {
            
            //translate([ 88-0.5, 8, -10.5 ]) rotate([ 90, 0, 0]) cylinder( h = 10, r = 1.6, $fn=30 );  //hole A1
            //translate([ 88, 8, -10.5 ]) rotate([ 90, 0, 0]) cylinder( h = 10, r = 1.6, $fn=30 );  //hole A
            //translate([ 88+0.5, 8, -10.5 ]) rotate([ 90, 0, 0]) cylinder( h = 10, r = 1.6, $fn=30 );  //hole A2
            
            //translate([ 68-0.5, 8, -10.5 ]) rotate([ 90, 0, 0 ]) cylinder( h = 10, r = 1.6, $fn=30 );  //hole B1
            //translate([ 68, 8, -10.5 ]) rotate([ 90, 0, 0 ]) cylinder( h = 10, r = 1.6, $fn=30 );  //hole B
            //translate([ 68+0.5, 8, -10.5 ]) rotate([ 90, 0, 0 ]) cylinder( h = 10, r = 1.6, $fn=30 );  //hole B2
            
            translate([ 87.5, -8, -20 ]) rotate([ 0, 45, 0 ]) cube([ 10, 20, 10 ]);  //corner cut
            translate([ 52.5, -8, -20 ]) rotate([ 0, 45, 0 ]) cube([ 10, 20, 10 ]);  //corner cut
            translate([ 68.5, 20, -34 ]) rotate([ 45, 0, 0 ]) cube([ 15, 23, 20 ]);  //vertical reinf cutout
            
            
            
            
            translate([ 88, 8, -11.5 ]) rotate([ 90, 0, 0]) cylinder( h = 10, r = 1.8, $fn=30 );  //hole A
            translate([ 68, 8, -11.5 ]) rotate([ 90, 0, 0 ]) cylinder( h = 10, r = 1.8, $fn=30 );  //hole B
            
            translate([ 88, 8, -9.5 ]) rotate([ 90, 0, 0]) cylinder( h = 10, r = 1.8, $fn=30 );  //hole A
            translate([ 68, 8, -9.5 ]) rotate([ 90, 0, 0 ]) cylinder( h = 10, r = 1.8, $fn=30 );  //hole B
            
            translate([ 86.2, -10, -11.5 ]) cube([ 3.6, 20, 2 ]);  // hole cut extension
            translate([ 66.2, -10, -11.5 ]) cube([ 3.6, 20, 2 ]);  // hole cut extension
            
            
        }
}
}

module FINAL_PART(){
    union()
        {
            PSU_COVER();
            PSU_Y_REINFORCEMENT();
        }   
}

FINAL_PART();


