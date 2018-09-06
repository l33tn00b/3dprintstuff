
union(){
    difference(){
        cylinder(d1=7, d2=7, h=15,center=true, $fn=15);
        cylinder(d1=4.8, d2=4.8, h=15,center=true, $fn=15);
    }
    translate([0,0,15/2+5/2]) cylinder(d1=7,d2=2,h=5,center=true);
}