// PRUSA iteration3
// RAMBo cover base
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

bordWidth = 82.5;
bordHeight= 126.5;
bordMountingDist=3.5;
bordDistRight=10;
bordDistLeft=5;
bordDistTop=5;
bordDistBottom=-10;

UsbDistance=42;
PowerDistance=9;
Wallth =2;


// main body
module main_body(){
//cube( [ 114.5 , 92 , 2 ] );  
cube( [ bordDistTop+bordHeight + bordDistBottom+20, 14+bordDistLeft+ bordWidth +bordDistRight, Wallth ] );
cube( [ Wallth ,  14+bordDistLeft+ bordWidth +bordDistRight , 35 ] );  
translate( [ 0 ,  14+bordDistLeft+ bordWidth +bordDistRight-Wallth , 0 ] ) cube( [ bordDistTop+bordHeight + bordDistBottom +30, Wallth , 35 ] );  
translate( [ 63 , 14+bordDistLeft+ bordWidth +bordDistRight-3.5 , 0.5 ] ) cube( [ 6.5 , Wallth , 34.5 ] );  

translate( [ 0 , 0 , 1 ] ) cube( [ 5.5 , 7 , 34 ] );  
translate( [ 0 , 0 , 1 ] ) cube( [ 9 , 14+bordDistLeft+ bordWidth +bordDistRight , 3 ] );  
translate( [ bordDistTop+bordHeight + bordDistBottom+6 , 0 , 0 ] ) cube( [ 9 , 14+bordDistLeft+ bordWidth +bordDistRight , 4 ] );  
translate( [ 98 , 14+bordDistLeft+ bordWidth +bordDistRight-6 , 0 ] ) cube( [ 7.5 , 6 , 35 ] );  
translate( [ 0 , 14+bordDistLeft+ bordWidth +bordDistRight-7 , 0 ] ) cube( [ 5.5 , 7 , 35 ] );  
translate( [ 54 , 14+bordDistLeft+ bordWidth +bordDistRight-8 , 0 ] ) cube( [ 9.5 , 7 , 35 ] );  
translate( [ 20 , 0 , 0 ] ) cube( [ bordDistTop+bordHeight + bordDistBottom , 3 , 5 ] );  

// RAMBo mounting holes
//translate( [ 102.5 , 14 , 1 ] ) rotate([0,0,90]) cylinder( h = 7, r = 5.5, $fn=6); 
//translate( [ 102.5 , 75 , 1 ] ) rotate([0,0,90]) cylinder( h = 7, r = 5.5, $fn=6); 
//translate( [ 7.5 , 14 , 1 ] ) cylinder( h = 7, r = 5.5, $fn=6); 
//translate( [ 7.5 , 75 , 1 ] ) cylinder( h = 7, r = 5.5, $fn=6); 

translate( [Wallth+ bordDistTop + bordHeight -bordMountingDist, 14+bordDistLeft + bordMountingDist, 1 ] ) rotate([0,0,90]) cylinder( h = 7, r = 5.5, $fn=6); 
translate( [ Wallth+ bordDistTop + bordHeight -bordMountingDist , 14+bordDistLeft+bordWidth-bordMountingDist , 1 ] ) rotate([0,0,90]) cylinder( h = 7, r = 5.5, $fn=6); 
translate( [ Wallth+ bordDistTop +bordMountingDist , 14+bordDistLeft+ bordMountingDist , 1 ] ) cylinder( h = 7, r = 5.5, $fn=6); 
translate( [ Wallth+ bordDistTop +bordMountingDist , 14+bordDistLeft+bordWidth-bordMountingDist , 1 ] ) cylinder( h = 7, r = 5.5, $fn=6); 



// corners reinforcement
translate( [ 0 , 14+bordDistLeft+ bordWidth -bordMountingDist-10 , 1 ] ) cube( [ 13 , bordDistRight+bordMountingDist+10 , 6 ] );  
//translate( [ 0 , 70.25 , 1 ] ) cube( [ 7.5 , 11 , 6 ] ); 
translate( [ 0 , 5 , 1 ] ) cube( [ Wallth+ bordDistTop +5 , 14+bordDistLeft+5 , 6 ] ); 
translate( [ 0 , 0 , 1 ] ) cube( [ 13 , 14+bordDistLeft , 6 ] ); 

// frame mounting screw blocks
translate( [ 98 , 0 , 0 ] ) cube( [ 16.5 , 8 , 8 ] ); 
translate( [ 1 , 0 , 0 ] ) cube( [ 19.5 , 8 , 8 ] );  
translate( [ 16.5 , 8 , 5 ] ) rotate([90,0,0]) cylinder( h = 8, r = 5, $fn=30);   
translate( [ 110.5 , 8 , 5 ] ) rotate([90,90,0]) cylinder( h = 8, r = 5, $fn=30);
translate( [ 18.45 , 0 , 0 ] ) cube( [ 3 , 8 , 5.5] ); 

// heatbed filament holder body
translate( [ 81.6 , 14+bordDistLeft+ bordWidth +bordDistRight+(90.35-92) , 24 ] ) rotate([0,90,0]) cylinder( h = 17, r = 5, $fn=6); 

// door closing corner
translate( [ 102 , 14+bordDistLeft+ bordWidth +bordDistRight-3.5 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   

translate( [ 2 , 14+bordDistLeft+ bordWidth +bordDistRight-7 , 31 ] ) cube( [ 6 , 7 , 4] ); 
translate( [ 4 , 14+bordDistLeft+ bordWidth +bordDistRight-3.5 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   
translate( [ 89 , 2 , 0 ] ) cylinder( h = 5, r = 6, $fn=6);   



}



module inside_cable_holder(){
    
translate( [ 50 , 6 , 0.5 ] ) cube( [ 30, 2, 20] ); 
difference(){
translate( [ 50 , 8 , 25 ] ) rotate([0,90,0]) cylinder( h = 30, r = 6, $fn=6);   
translate( [ 49 , 8 , 25 ] ) rotate([0,90,0]) cylinder( h = 34, r = 4, $fn=6);  
translate( [ 49 , 8 , 10 ] ) cube( [ 34, 10, 25] );     
}
    
    }

module cutouts(){
// side     
translate( [  Wallth+ bordDistTop +bordMountingDist+5 , 14+bordDistLeft+bordMountingDist+5 , 1 ] ) cube( [ bordHeight-(2*bordMountingDist)-10 , bordWidth -(2*bordMountingDist)-10 , 3 ] );   

// RAMBo M3 screws
translate( [ Wallth+ bordDistTop +bordMountingDist , 14+bordDistLeft +bordMountingDist , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [ Wallth+ bordDistTop + bordHeight -bordMountingDist, 14+bordDistLeft+ bordMountingDist , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [  Wallth+ bordDistTop + bordHeight -bordMountingDist , 14+bordDistLeft+bordWidth-bordMountingDist , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [ Wallth+ bordDistTop +bordMountingDist , 14+bordDistLeft+bordWidth-bordMountingDist , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);     
    
// frame mounting screws
translate( [ 16.5 , 8 , 5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);   
translate( [ 110.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);   
translate( [ 16.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);   
translate( [ 110.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);       
//translate( [ 114.5 , -2 , -1 ] ) cube( [ 5 , 15 , 10] ); 

// USB connector hole
translate( [ -1 , 14+bordDistLeft+UsbDistance , 10 ] ) cube( [ 5.5 , 14 , 11.5 ] );  
translate( [ -1 , 14+bordDistLeft+PowerDistance , 10 ] ) cube( [ 5.5 , 11 , 11.5 ] );  

// reset button
//translate( [ -2 , 65 , 14 ] ) rotate([0,90,0]) cylinder( h = 10, r = 2, $fn=30);  

// door closing screw
translate( [ 58.5 , 14+bordDistLeft+ bordWidth +bordDistRight-4 , -1 ] ) cylinder( h = 43, r = 1.8, $fn=30);  


// heatbed cable opening hole
translate( [ 75.5 , 14+bordDistLeft+ bordWidth +bordDistRight+2 , 24 ] ) rotate([90,90,0]) cylinder( h = 5, r = 7, $fn=6); 
translate( [ 77.6 , 14+bordDistLeft+ bordWidth +bordDistRight-12 , 20.5 ] ) cube( [ 4 , 15 , 15] ); 
translate( [ 69.4 , 14+bordDistLeft+ bordWidth +bordDistRight+3 , 27.5 ] ) rotate([90,60,0]) cube( [ 5 , 10 , 10] ); 

// heatbed cable ziptie holes
translate( [ 64 , 14+bordDistLeft+ bordWidth +bordDistRight-5 , 30 ] ) cube( [ 4 , 10 , 2 ] ); 
translate( [ 64 , 14+bordDistLeft+ bordWidth +bordDistRight-5 , 16 ] ) cube( [ 4 , 10 , 2 ] );  



// heatbed filament holder hole
translate( [ 81 , 14+bordDistLeft+ bordWidth +bordDistRight-3 , 24 ] ) rotate([0,90,0]) cylinder( h = 17, r = 1.6, $fn=30); 
translate( [ 81 , 14+bordDistLeft+ bordWidth +bordDistRight-3 , 24 ] ) rotate([0,90,0]) cylinder( h = 2, r = 2, r2=1.6, $fn=30);  
translate( [ 70 , 14+bordDistLeft+ bordWidth +bordDistRight , 15 ] ) cube( [ 30 , 10 , 15] ); 


// nut traps
translate( [ Wallth+ bordDistTop +bordMountingDist , 14+bordDistLeft + bordMountingDist, -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [ Wallth+ bordDistTop + bordHeight -bordMountingDist, 14+bordDistLeft + bordMountingDist, -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [  Wallth+ bordDistTop + bordHeight -bordMountingDist , 14+bordDistLeft+bordWidth-bordMountingDist , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [ Wallth+ bordDistTop +bordMountingDist , 14+bordDistLeft+bordWidth-bordMountingDist , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  

translate( [ Wallth+ bordDistTop +bordMountingDist , 14+bordDistLeft+ bordMountingDist , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ Wallth+ bordDistTop + bordHeight -bordMountingDist, 14+bordDistLeft + bordMountingDist, -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [  Wallth+ bordDistTop + bordHeight -bordMountingDist , 14+bordDistLeft+bordWidth-bordMountingDist , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ Wallth+ bordDistTop +bordMountingDist , 14+bordDistLeft+bordWidth-bordMountingDist , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ 58.5 , 14+bordDistLeft+ bordWidth +bordDistRight-4 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=30);   


// door closing corners
// csc Old?
// translate( [ 8 ,14+bordDistLeft+ bordWidth +bordDistRight-12 , 28 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 10] ); 
// translate( [ 106 , 14+bordDistLeft+ bordWidth +bordDistRight-11 , 4 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 40] ); 


// x axis cable hole
translate( [ 89 , 2 , -1 ] ) cylinder( h = 10, r = 4, $fn=6);   
translate( [ 80 , -5 , -1 ] ) cube( [ 15, 5, 10] ); 



// large corner coutout
translate( [ -25 , 14+bordDistLeft+ bordWidth +bordDistRight-12 , -54 ] ) rotate([50,0,45]) cube( [ 50, 50, 50] ); 
translate( [ bordDistTop+bordHeight + bordDistBottom+45 , 14+bordDistLeft+ bordWidth +bordDistRight+(60-92) , -10 ] ) rotate([0,0,45]) cube( [ 50, 50, 50] ); 

}

module ext_ziptie(){
difference(){
translate( [ -6 , 28 , 27 ] ) rotate([0,90,0]) cylinder( h = 3, r = 15, $fn=30);       
translate( [ -7 , 28 , 27 ] ) rotate([0,90,0]) cylinder( h = 5, r = 7, $fn=30);       
}
}


module ext_cable_holder()
{
difference()
{
    union(){
        rotate([90,0,0]) translate([-8, 26, -28]) rotate([0,90,0]) cylinder( h = 4, r1 = 7, r2=10, $fn=6);    
        rotate([90,0,0]) translate([-4, 26, -28]) rotate([0,90,0]) cylinder( h = 4, r1 = 10, r2=10, $fn=6);    
        rotate([90,0,0]) translate( [ 1.5 , 26 , -28 ] ) rotate([0,90,0]) cylinder( h = 10, r1 = 10, r2=7, $fn=6);
        translate( [ -4.1 , 28 , 17.5 ] ) rotate([0,45,0]) cube( [ 7 , 5 , 8 ] );           
    }
    
    translate( [ -15 , 13 , 15] ) cube( [ 15 , 15 , 25 ] );  
    translate( [ 1.5 , 26 , 10] ) cube( [ 15 , 15 , 25 ] );   
 
    difference(){
        rotate([90,0,0]) translate([-4, 26, -28]) rotate([0,90,0]) cylinder( h = 3.5, r = 8,  $fn=30);    
        rotate([90,0,0]) translate([-5, 26, -28]) rotate([0,90,0]) cylinder( h = 5.5, r = 6.5,  $fn=30);    
        }
}
}







module rambo_cover()
{
    difference()
    {
    main_body();
    cutouts();
    }
}


difference(){

union(){
rambo_cover();
    translate( [ 10 , 14+bordDistLeft+ bordWidth +bordDistRight-3 , 3] ) cube( [ 6 , 1 , 32 ] ); 
    translate( [ 12 , 14+bordDistLeft+ bordWidth +bordDistRight-3 , 1] ) cube( [ 4 , 1 , 2 ] ); 
}

translate( [ 25 ,14+bordDistLeft+ bordWidth +bordDistRight-3 , 20.8] ) cube( [ 7.4 , 5 , 16 ] );  //Cube018   
translate( [ 25 , 14+bordDistLeft+ bordWidth +bordDistRight+3 , 25 ] ) rotate([90,90,0]) cylinder( h = 7, r = 8.5, $fn=6);   

// extruder cable zipties
translate( [ 11 , 14+bordDistLeft+ bordWidth +bordDistRight-5 , 30 ] ) cube( [ 4 , 10 , 2 ] );  
translate( [ 11 , 14+bordDistLeft+ bordWidth +bordDistRight-5 , 16 ] ) cube( [ 4 , 10 , 2 ] );  
    


}

module extruder_filament_holder()
{
difference(){
translate( [ 33 , 14+bordDistLeft+ bordWidth +bordDistRight-2 , 25 ] ) rotate([0,90,0]) cylinder( h = 22, r = 8, $fn=4);  
translate( [ 30 , 14+bordDistLeft+ bordWidth +bordDistRight-4 , 25 ] ) rotate([0,90,0]) cylinder( h = 22, r = 1.6, $fn=30);  
translate( [ 32 , 14+bordDistLeft+ bordWidth +bordDistRight-4 , 25 ] ) rotate([0,90,0]) cylinder( h = 3, r1 = 2, r2=1.6, $fn=30); 
translate( [ 26 ,14+bordDistLeft+ bordWidth +bordDistRight-13 , 20.8] ) cube( [ 30 , 5 , 16 ] );          
translate( [ 26 ,14+bordDistLeft+ bordWidth +bordDistRight-1 , 15] ) cube( [ 30 , 15 , 16 ] );     
}
}

extruder_filament_holder();

// print part support
translate([0,1,0])
difference(){
translate( [ 18 ,14+bordDistLeft+ bordWidth +bordDistRight-2 , 15] ) cube( [ 7 , 1 , 19 ] );    
translate( [ 17 ,14+bordDistLeft+ bordWidth +bordDistRight+(90.6-92) , 29.4] ) rotate([0,60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 30 ,14+bordDistLeft+ bordWidth +bordDistRight+ (90.6-92) , 13.1] ) rotate([0,-60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 30 ,14+bordDistLeft+ bordWidth +bordDistRight-3 , 13] ) rotate([0,-60,0]) cube( [ 10 , 3 , 10 ] );    

translate( [ 20 ,14+bordDistLeft+ bordWidth +bordDistRight+8, 20 ] ) rotate([90,0,0]) cylinder( h = 33, r = 1, $fn=30);     
translate( [ 21 ,14+bordDistLeft+ bordWidth +bordDistRight+7, 31 ] ) rotate([90,0,0]) cylinder( h = 33, r = 1, $fn=30);     
}



// print part support
difference()
{
translate( [ 70 ,14+bordDistLeft+ bordWidth +bordDistRight-1.5 , 15] ) cube( [ 7.5 , 1 , 19 ] );     
translate( [ 69 ,14+bordDistLeft+ bordWidth +bordDistRight-1 , 27.8] ) rotate([0,60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 80 ,14+bordDistLeft+ bordWidth +bordDistRight-1 , 13.9] ) rotate([0,-60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 81.5 ,14+bordDistLeft+ bordWidth +bordDistRight-2 , 10] ) rotate([0,-60,0]) cube( [ 10 , 2 , 10 ] );    
}




















