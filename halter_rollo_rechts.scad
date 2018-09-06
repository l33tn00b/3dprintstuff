//Halter rechts
//etwas dünner gemacht als Halter links 
//d.h. Höhe Stabhalter= 5mm (statt 8mm)
// Höhe Basisplatte = 1mm  (statt 1.2mm)
//reduziert Stabilität Basisplatte... (leicht biegbar)

//für minkowski-summe zum abrunden des fertigen körpres
hm = 0; //höhe zylinder
rm = 0; //radius zylinder

//basisvergrößerung
//g = 40
g = 50;
h = 25;
i = 1;

//Basiskörper (Quader)
a = 25-2*rm;
b = 25-2*rm;
c = 5-2*hm;


//Quader zum Ausschneiden aus dem Basiskörper
d = 25+2*rm;
e = 20+2*rm;
f = c + 0.1;// sicherstellen, dass der Ausschnitt wirklich sichtbar größer ist
//der Quader zum Ausschneiden kriegt an dem einen Ende einen Zylinder, in den die Stange des Rollos einhakt.
hc = c + 0.1; // sicherstellen, dass der Ausschnitt wirklich sichtbar größer ist
dc = 9+2*rm; //durchmesser stab rollo = 8



$fn=15;
minkowski(){
    union(){
        //die Basisplatte (Vergrößerung zum Kleben)
        //für den Halter rechts in +x verschoben
        translate([+g/2-a/2,0,-c/2]) cube([g,h,i],center = true);
        //der eigentliche Halter für den Stab
        //für den Halter rechts um 180° um Y rotiert
        rotate([0,180,0])difference(){
            //Basisköper
            cube([a,b,c], center = true);
            //den cube für den schlitz so verschieben, dass der durch den Zylinder ein abgerundetes Ende erhält,
            //dann mit dem zylinder vereinigen
            //und das ganze ding 35 grad rotieren um die z-achse
            translate([0,-b/2+e/2,0])rotate(a=35, v=[0,0,1])union(){
                cylinder(hc, dc/2,dc/2, center=true);
                translate([d/2,-e/2+dc/2,0])cube([d,e,f], center = true);
            }    
        }
    }
    cylinder(r=rm,h=hm);
}