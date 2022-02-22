//Y axis motor mount

difference(){
    Body();
    translate([0,50]){MotorMount();}
    ExtrudedRail();
}

module MotorMount(){
    translate([-15.5,15.5]){cylinder(20, 2, 2);}
    translate([-15.5,-15.5]){cylinder(20, 2, 2);}
    translate([15.5,15.5]){cylinder(20, 2, 2);}
    translate([15.5,-15.5]){cylinder(20, 2, 2);}
    
    cylinder(20, 11.5, 11.5);
}

module ExtrudedRail(){
    translate([-10,0]){cylinder(20, 2, 2);}
    translate([10,0]){cylinder(20, 2, 2);}

}

module Body(){
    translate([-25,-7])cube([50,80,5]);
}