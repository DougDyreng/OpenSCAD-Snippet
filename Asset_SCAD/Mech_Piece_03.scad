module Mech_Piece_01(){

Key_Lenght = 10;
Key_Height = 10;
Key_Width = 15;

color("#a8b0b2")
union(){
    translate([1,0,0])
    cylinder(3,0.5,0.5, $fn=40, center=true);

    translate([-1,0,0])
    cylinder(3,0.5,0.5, $fn=40, center=true);

    cube([2,1,3],center = true);
}


}

difference(){

hull(){
translate([5,0,0])
circle(r = 1, $fn = 30);

translate([0,5,0])
circle(r = 1, $fn = 30);

translate([0,-5,0])
circle(r = 1, $fn = 30);

}


translate([0,-4,0]){
rotate([0,0,90])
Mech_Piece_01();
}

translate([0,4,0]){
rotate([0,0,90])
Mech_Piece_01();
}

}