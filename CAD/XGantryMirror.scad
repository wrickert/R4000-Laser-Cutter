//X Gantry non-mirror side
mirror([0,1,0]){
    difference(){
        body();
        Carrage_Mount();
        Screw_Pockets();
        Screws();
        
        //2020 pocket
        translate([0,-10,6])linear_extrude(22){square([20.5,40],center=true);} 
        //Clean supports
        translate([-23.01,-9,20.01])linear_extrude(5){square([20,30],center=true);}       
        Screws();

        BeltGrooves();
        
        //Heat set insert holes for belt
        translate([7,21,0]){cylinder(30,2.3,2.3);}
        translate([-7,21,0]){cylinder(30,2.3,2.3);} 

    }
}

BeltCap();

difference(){
    NewBody();
    translate([-24,-56,0]){StepperMount();}
    translate([0,35,0]){cylinder(30,2.3,2.3);} 

    MirrorMountScrews();
}


module MirrorMountScrews(){
    r = 2;
    translate([35,-65,5])rotate(a=[-45,90,0]){cylinder(20,r,r);}
    translate([20,-50,5])rotate(a=[-45,90,0]){cylinder(30,r,r);}
}


// This is a new body area special for the mirror bits
module NewBody(){
    //Stepper body place
    translate([-24 ,-56,0])linear_extrude(6){square([45,45],center=true);}
    //Bridge the gap between the motor mount and mirror mount
    translate([9 ,-56,0])linear_extrude(6){square([22,45],center=true);}
    
    mirror([1,1])translate([74,-62]){MirrorMount();}
}



module MirrorMount(){
    x = -42;
    y = 42;
    zMax = 10;
    
    points = [
    [0,0,0],     //0
    [x,y,0],     //1
    [0,y,0],    //2
    [0,0,zMax],  //3
    [0,y,zMax],  //4
    [x,y,zMax]]; //5

//Faces are defined looking straight at them
    faces=[
    [0,1,2],  // bottom
    [3,4,5],  // top
    [0,2,4,3],  // right
    [2,1,5,4],  // back
    [1,0,3,5]]; // left
    
    polyhedron(points, faces);
}


module BeltCap(){
    x = 43;
    y = 00;
    
    difference(){
        translate([x,28.5,0])linear_extrude(6){square([28,22],center=true);}
      
        translate([7+x,21+y,0]){cylinder(30,2,2);}
        translate([-7+x,21+y,0]){cylinder(30,2,2);} 
        translate([0+x,35+y,0]){cylinder(30,2,2);} 
}
}

module StepperMount(){
    translate([-15.5,-15.5,0]){cylinder(30,2.3,2.3);}
    translate([-15.5,15.5,0]){cylinder(30,2.3,2.3);}
    translate([15.5,-15.5,0]){cylinder(30,2.3,2.3);}
    translate([15.5,15.5,0]){cylinder(30,2.3,2.3);}
    cylinder(30,11,11);
}

module BeltGrooves(){
    for(i = [0:25]){
        translate([(2*i)-25,25,4]){cube([1,6.5,6]);}
    }
}

//Holes for the heat set screws
module ScrewTopOfBeltPulley(){
    translate([-16,-3.5,15]){cylinder(30,2,2);}
    translate([-34,-3.5,15]){cylinder(30,2,2);}
}

module BeltPulleyPocket(){
    r = 10.5;
    x = -25;
    y = -16;
    z = 10;
    translate([x,y,z]){cylinder(10,r,r);}
    translate([(x-10),(y-20),z]){cube([20,20,10]);}
    translate([x,y,0]){cylinder(30,2.7,2.7);}
    translate([x,y,8]){cylinder(30,4,4);}
}

module body(){
    //Base plate
    translate([0,6,0])linear_extrude(6){square([48,60],center=true);}
    //2020 holder
    translate([0,-4,6])linear_extrude(20){square([26,40],center=true);}

    translate([0,35,0])linear_extrude(6){square([10,8],center=true);}

    Supports(-22);
    Supports(0);
}

module Supports(y){
    x = 24;
    z = 26;
    
    points = [
    [0,y,6],       //0
    [x,y,6],        //1
    [x,(y-2),6],    //2
    [0,(y-2),6],   //3
    [0,y,z],      //4
    [10,y,z],       //5
    [10,(y-2),z],   //6
    [0,(y-2),z]]; //7
    faces=[
    [0,1,2,3],  // bottom
    [4,5,1,0],  // front
    [7,6,5,4],  // top
    [5,6,2,1],  // right
    [6,7,3,2],  // back
    [7,4,0,3]]; // left
    
    polyhedron(points, faces);
}

module Screws(){
    r = 2;
    translate([-15,4,17])rotate(a=[0,90,0]){cylinder(30,r,r);}
    translate([-15,-13,17])rotate(a=[0,90,0]){cylinder(30,r,r);}
    translate([0,20,17])rotate(a=[90,0,0]){cylinder(30,r,r);}
}

module Carrage_Mount(){
    translate([-18,16]){cylinder(10,2.5,2.5);}
//    translate([-18,-16]){cylinder(10,2.5,2.5);}
    translate([18,16]){cylinder(10,2.5,2.5);}
    translate([18,-16]){cylinder(10,2.5,2.5);}
}

module Screw_Pockets(){
    r = 5;
    translate([-18,16,4]){cylinder(10,r,r);}
//    translate([-18,-16,4]){cylinder(10,r,r);}
    translate([18,16,4]){cylinder(10,r,r);}
    translate([18,-16,4]){cylinder(10,r,r);}
}