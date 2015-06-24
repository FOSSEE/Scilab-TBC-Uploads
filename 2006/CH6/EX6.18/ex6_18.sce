clc;
TA=323;// Temperature at section A in kelvin
PA=125; // Pressure at section A in kPa
TB=287;// Temperature at section B in kelvin
PB=100; // Pressure at section B in kPa
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
SBA=(Cpo*log (TB/TA))-(R*log (PB/PA)); // Change in entropy
disp("Hence SA>SB. Therefore B to A","kJ/kg",SBA,"Change in entropy from B to A =");
