//schrauben sind 2,9 x ~13 blechschrauben
//müssen ersetzt werden durch andere/längere.
//länge der schrauben wird durch oberteil bestimmt.
//22 sind die längsten 2,9er
//v2: befestigungslöcher etwas weiter auseinander (6 statt 6,5mm), haltenase
//idee v3: etwas dicker (x, ca 5mm), dass oben noch die nase einrasten kann
//v4: schrägen ausschnitt etwas nach unten gezogen
//birne damit weiter weg vom schirm
//zentrierlöcher schrauben etwas größer (werden beim druck zugeschmaddert)
dcyl = 39;
union(){
    difference(){
        //grundkörper
        cube([20,60,25]);
        //sackloch zum aufstecken des grundkoerpers
        translate([12.5,6,0]) cylinder(d1=9,d2=9,h=15);
        //zentrierbohrung schraube
        translate([12.5,6,14]) cylinder(d1=3,d2=3,h=15);
        //versenkung befestigungsschraube
        translate([12.5,6,17]) cylinder(d1=12,d2=12,h=15);
        //zweites sackloch
        translate([12.5,60-6,0]) cylinder(d1=9,d2=9,h=15);
        //zentrierbohrung schraube
        translate([12.5,60-6,14]) cylinder(d1=3,d2=3,h=15);
        //versenkung befestigungsschraube
        translate([12.5,60-6,17]) cylinder(d1=12,d2=12,h=15);
        //ausschnitt schräge einfassung der baufassung
        translate([-15,30,10]) rotate([0,45,0]) cylinder(d1=dcyl,d2=dcyl,h=60);
        
    }
    translate([18,30-3.5,14]) cube([2,7,8]);
}

