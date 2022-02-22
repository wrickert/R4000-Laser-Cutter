//X Gantry non-mirror side
//Minimal version to test fit.

difference(){
    linear_extrude(4){square([43,40],center=true);}
    Carrage_Mount();
    translate([0,-10,2])linear_extrude(5){square([20.5,40],center=true);}    
}






module Carrage_Mount(){
    translate([-18,16]){cylinder(10,2.5,2.5);}
    translate([-18,-16]){cylinder(10,2.5,2.5);}
    translate([18,16]){cylinder(10,2.5,2.5);}
    translate([18,-16]){cylinder(10,2.5,2.5);}
}