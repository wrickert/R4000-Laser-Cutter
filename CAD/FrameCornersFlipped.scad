// V3 Add belt tensioner
difference(){
//mirror([1,0,0]){
    Body();
    ScrewHoles();
    IdlerPocket();
    IdlerCap();
}

module Body(){
   //Main body
    //mirror([0,1,0]){
    linear_extrude(10){
        difference(){
        square(45,50);
        rotate(-45)translate([15,10]){square([40,50]);}
    }}

    //Belt idler pulley body
    linear_extrude(10)translate([-40,-55]){square([40,100]);}
    linear_extrude(15)translate([-25,-25]){square([10,70]);}
    
    //Belt idler cap body
    
    linear_extrude(5)translate([30,-35]){square([35,30],center=true);}
}

module ScrewHoles(){
    //Screw holes
    translate([11,10]){cylinder(10,3.6,3.6);}
    translate([12,30]){cylinder(10,2.5,2.5);}
    translate([34,30]){cylinder(10,2.5,2.5);}

    //Small screw pockets
    translate([12,30,8]){cylinder(4,3.5,3.5);}
    translate([34,30,8]){cylinder(4,3.5,3.5);} 

}

//Pocket for the idler and axis
module IdlerPocket(){
    linear_extrude(10)translate([-20,-40]){square([9.5,20],center=true);}
    
    //Idler Pulley Axis
    translate([-32.5,-40,10])rotate(a=[90,90,90]){cylinder(25,2.5,2.5);}
    
    //Screws for the cap
    r = 2.1;
    xdiff = 13;
    ydiff = 10;
    xcenter = -20;
    ycenter = -40;
    translate([xcenter+xdiff,ycenter+ydiff]){cylinder(10,r,r);}
    translate([xcenter-xdiff,ycenter+ydiff]){cylinder(10,r,r);}
    translate([xcenter+xdiff,ycenter-ydiff]){cylinder(10,r,r);}    
    translate([xcenter-xdiff,ycenter-ydiff]){cylinder(10,r,r);}    
}

module IdlerCap(){
    linear_extrude(10)translate([30,-35]){square([9.5,20],center=true);}
    
    //Idler Pulley Axis
    translate([17.5,-35,5])rotate(a=[90,90,90]){cylinder(25,2.5,2.5);}
    
    //Screws for the cap
    r = 2.1;
    xdiff = 13;
    ydiff = 10;
    xcenter = 30;
    ycenter = -35;
    translate([xcenter+xdiff,ycenter+ydiff]){cylinder(10,r,r);}
    translate([xcenter-xdiff,ycenter+ydiff]){cylinder(10,r,r);}
    translate([xcenter+xdiff,ycenter-ydiff]){cylinder(10,r,r);}    
    translate([xcenter-xdiff,ycenter-ydiff]){cylinder(10,r,r);} 
}




