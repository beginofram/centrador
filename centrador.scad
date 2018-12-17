resolucion = 100; // Calidad de la circunferencia
agujero_eje = 6; // Para que pase el eje central

eje_cd = 14.5; // En él debe calzar el CD.
tapa_cd = 15; // Debe calzar en el eje_cd

difference(){
  union() {
    cylinder(h=5, r=30, $fn=resolucion);
    cylinder(h=8, r=eje_cd, $fn=resolucion);
    translate([0, 0, 8])
      cylinder(h=2, r1=eje_cd, r2=12, $fn=resolucion);
  };
  cylinder(h=10, r=agujero_eje, $fn=resolucion);
};

translate([70, 0, 0]){
  difference(){
    union(){
      cylinder(h=4, r=30, $fn=resolucion);
      translate([0, 0, 4])
        cylinder(h=6, r1=30, r2=10);
    };
    union(){
      cylinder(h=5, r=tapa_cd, $fn=resolucion);
      cylinder(h=10, r=agujero_eje, $fn=resolucion);
    }
  };
}