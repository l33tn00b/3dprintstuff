//schrauben sind 2,9 x ~13 blechschrauben
//müssen ersetzt werden durch andere/längere.
//länge der schrauben wird durch oberteil bestimmt.
//22 sind die längsten 2,9er
difference(){
    //grundkörper
    cube([15,60,25]);
    //sackloch zum aufstecken des grundkoerpers
    translate([7.5,6.5,0]) cylinder(d1=9,d2=9,h=15);
    //zentrierbohrung schraube
    translate([7.5,6.5,14]) cylinder(d1=2,d2=2,h=15);
    //versenkung befestigungsschraube
    translate([7.5,6.5,17]) cylinder(d1=12,d2=12,h=15);
    //zweites sackloch
    translate([7.5,60-6.5,0]) cylinder(d1=9,d2=9,h=15);
    //zentrierbohrung schraube
    translate([7.5,60-6.5,14]) cylinder(d1=2,d2=2,h=15);
    //versenkung befestigungsschraube
    translate([7.5,60-6.5,17]) cylinder(d1=12,d2=12,h=15);
    //ausschnitt schräge einfassung der baufassung
    translate([-15,30,15]) rotate([0,45,0]) cylinder(d1=38,d2=38,h=60);
}


