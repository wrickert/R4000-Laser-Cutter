// V2 Holes to mount a belt and resess the small screw heads

difference(){
    //Main body
    linear_extrude(10){
        difference(){
        square(45,50);
        rotate(-45)translate([15,10]){square(40,50);}
    }}

    //Screw holes
    translate([11,10]){cylinder(10,3.6,3.6);}
    translate([12,30]){cylinder(10,2.5,2.5);}
    translate([34,30]){cylinder(10,2.5,2.5);}

    //Small screw pockets
    translate([12,30,8]){cylinder(4,3.5,3.5);}
    translate([34,30,8]){cylinder(4,3.5,3.5);} 
      
    //Belt screw holes
    translate([4,-1,5])rotate(a=[270,0,0]){cylinder(6,1.95,1.95);}
    translate([18,-1,5])rotate(a=[270,0,0]){cylinder(6,1.95,1.95);}
}

