//Linear Rail end stops
module body(){
    cube([22,20,10]);
    translate([8,-2,0]){cube([6,2,8]);}
}

difference(){
    body();
    translate([11,-3,5])rotate(a=[270,0,0]){cylinder(24,2.2,2.2);}
    translate([11,6,5])rotate(a=[270,0,0]){cylinder(24,3.3,3.3);}

}