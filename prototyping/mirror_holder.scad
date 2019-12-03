
tol = 0.1;

//screw dimensions
screwd = 3.8;
screwh = 10;
sheadd = 8;
sheadh = 3.26;

platet = 6 +sheadh+0.5;
//base holding the galvos
//"L" shaped
bthick = 12.90;
l1len = 34.82;
l2len = 39.87;
//holes in the base 
h1x = 26.19;
h1y = 3.53;

h2x = 13.61;
h2y = 3.53;

h3y = 27.8; 
h3x = bthick/2;//3.53;

module screw(diam1=screwd+2*tol,h1=screwh,diam2=sheadd+2*tol,h2=sheadh+0.5){
    translate([0,0,h1/2]){
        cylinder(d=diam1,h=h1,center=true);
    }//end translate
    translate([0,0,h2/2]){
        cylinder(d=diam2,h=h2,center=true);
    }//end translate
    
    }//end module

difference(){
cube([50,50,platet]);


union(){
translate([2,2,platet-2]){
cube([bthick+2*tol,l1len+2*tol,5]); 
cube([l2len+2*tol,bthick+2*tol,5]);

}//end translate
translate([h1x+screwd,h1y+screwd,-0.25]){
    screw();
    
    }//end translate

translate([h2x+screwd,h2y+screwd,-0.25]){
    screw();
    //cylinder(d=screwd+2*tol,h=platet+10,center=true);
    }//end translate

translate([h3x+screwd/2,h3y+screwd,-0.25]){
    screw();
    //cylinder(d=screwd+2*tol,h=platet+10,center=true);
    }//end translate

translate([20,20,-1]){
cube([50,50,platet+2]);
}//end translate
}//end union
}//end difference
/*   
//projection wall
translate([90,0,0]){
cube([5,20,20]);
}//end translate


//projection wall
translate([0,90,0]){
cube([30,10,20]);
}//end translate
    */
//screw();