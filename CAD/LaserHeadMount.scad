//Laser head mount V1

//MGN12-H Carriage 20mm x 20mm
//Cloudray K Series Laser Head 20mm x 20mm

difference(){
    linear_extrude(8){square([30,60],center=true);}
    translate([0,15,6]){linear_extrude(2){square([46,27],center=true);}}
    translate([0,15]){Carrage_Mount();}
    translate([0,-15]){Laser_Head_Mount();}
}

difference(){
linear_extrude(20){
    translate([0,35]){square([30,10],center=true);}
}
    //Belt screw holes
    translate([-10,35,16])rotate(a=[270,0,0]){cylinder(6,1.95,1.95);}
    translate([-10,35,4])rotate(a=[270,0,0]){cylinder(6,1.95,1.95);}
    translate([10,35,16])rotate(a=[270,0,0]){cylinder(6,1.95,1.95);}
    translate([10,35,4])rotate(a=[270,0,0]){cylinder(6,1.95,1.95);}

    Belt_Grooves();
}

module Belt_Grooves(){
    for(i = [0:25]){
        translate([(2*i)-14,38,7]){cube([1,3,6]);}
    }
}

module Carrage_Mount(){
    translate([-10,10]){cylinder(8,2,2);}
    translate([-10,-10]){cylinder(8,2,2);}
    translate([10,10]){cylinder(8,2,2);}
    translate([10,-10]){cylinder(8,2,2);}
}

module Laser_Head_Mount(){
    translate([-10,10]){cylinder(8,2,2);}
    translate([-10,-10]){cylinder(8,2,2);}
    translate([10,10]){cylinder(8,2,2);}
    translate([10,-10]){cylinder(8,2,2);}
    cylinder(8,11,11);
}


