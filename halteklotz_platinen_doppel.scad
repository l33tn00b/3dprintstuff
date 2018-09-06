//wenn reduzierte Flow Rate 60..80%, dann sind 2mm schlitz zuviel

difference(){
    cube([10,10,10], center=true);
    translate([2.6,0,2]){
        cube([5,10.1,1.8],center=true);
    }
}
translate([-5,0,0]){
    mirror([-1,0,0]){
        difference(){
            cube([10,10,10], center=true);
            translate([2.6,0,2]){
                cube([5,10.1,1.8],center=true);
            }
        }
    }
}