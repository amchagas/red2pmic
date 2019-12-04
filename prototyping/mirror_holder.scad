////////////////////////////////////////////////////////
//// jig to hold the galvo motors and laser source /////
//// so that the speed and response of the motors  /////
//// can be tested.                                /////
//// this is part of the development of an         /////
//// scanning microscope built with off-the-shelf  /////
////  components                                   /////
////  CC-BY-SA 4.0 20191203 AM Chagas              /////
////////////////////////////////////////////////////////

tol = 0.1;

//screw dimensions
screwd = 3.8;
screwh = 10;
sheadd = 8.4;
sheadh = 3.8;
//nut dimensions
nutd = 7.78;
nuth = 3.1;

platet = 6 +sheadh+0.5;
platex = 80;
platey = 100;
//base holding the galvos
//"L" shaped
bthick = 12.90;
l1len = 34.82;
l2len = 39.87;
//extra thickness for the base
extrat = 10;

//holes in the base 
h1x = 26.19;
h1y = 3.53;

h2x = 13.61;
h2y = 3.53;

h3y = 27.8; 
h3x = bthick/2;//3.53;

// laser holder 
laserht = 16; // +12 thickness for where the laser is being held
laserhl = 51;

laserholed = 23.8;

//offset variables to move parts away from plate edge
offsetx = 2;
offsety = 2;

fn1=6;
fn2=30;

///// modules ////////

module screw(diam1=screwd+2*tol,h1=screwh,diam2=sheadd+2*tol,h2=sheadh+0.5,fn1=6,fn2=6){
    translate([0,0,h1/2]){
        cylinder(d=diam1,h=h1,center=true,$fn=fn1);
    }//end translate
    translate([0,0,h2/2]){
        cylinder(d=diam2,h=h2,center=true,$fn=fn2);
    }//end translate
    
    }//end module


///////
    
    
    
    
    
difference(){
    union(){
        cube([platex,platey,platet/2]);
        cube([extrat+bthick+2*tol,extrat+l1len+2*tol,platet]); 
        cube([extrat+l2len+2*tol,extrat+bthick+2*tol,platet]);
    }//union
    
    union(){
        translate([offsetx,offsety,platet-2]){
            cube([bthick+2*tol,l1len+2*tol,5]); 
            cube([l2len+2*tol,bthick+2*tol,5]);
        }//end translate

    translate([h1x+screwd,h1y+screwd,-0.25]){
        screw(fn1=30,fn2=30);   
    }//end translate

    translate([h2x+screwd,h2y+screwd,-0.25]){
        screw(fn1=30,fn2=30); 
    
    }//end translate

    translate([h3x+screwd/2,h3y+screwd,-0.25]){
        screw(fn1=30,fn2=30); 
    }//end translate
    translate([bthick+extrat+laserholed+5,bthick+extrat+2,-1]){
    
        cube([laserhl-20,laserht,platet]);
    }

    }//end union
}//end difference

translate([bthick+extrat+laserholed+5,bthick+extrat+2,0]){
    difference(){
        cube([laserhl-20,laserht,platet]);
    
        translate([laserholed,laserht/2,-0.1]){
            cylinder(d=4,h=platet+1,$fn=30);
            screw(diam1 = nutd+2*tol, h1=nuth+3,h2=2,diam2=nutd+2,fn1=fn1,fn2=fn2);
        }//end translate
    }//end difference
    }//end translate
translate([0,platey-extrat+5,0]){
    cube([60,extrat-5,60]);
    }//end translate