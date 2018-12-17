resolucion = 50; // Calidad de la circunferencia
agujero_eje = 6; // Para que pase el eje central

eje_cd = 14.5; // En él debe calzar el CD.
tapa_cd = 15; // Debe calzar en el eje_cd

difference(){
  union() {
    cylinder(h=5, r=30, $fn=resolucion);
    cylinder(h=10, r=eje_cd, $fn=resolucion);
  };
  cylinder(h=10, r=agujero_eje, $fn=resolucion);
};

translate([70, 0, 0]){
  difference(){
    cylinder(h=5, r=30, $fn=resolucion);
    cylinder(h=5, r=tapa_cd, $fn=resolucion);
  };
}