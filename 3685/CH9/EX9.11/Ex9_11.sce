clc
// P = 1MPa
vf = 0.001127 // specific volume of fluid in m^3/kg
vg = 0.1944// specific volume of gas in m^3/kg
hg = 2778.1 // specific enthalpy of gas in kJ/kg
uf = 761.68 // Specific internal energy of fluid in kJ/kg
ug = 2583.6 // Specific internal energy of gas in kJ/kg
ufg = 1822 // Change in specific internal energy due to phase change in kJ/kg 
// Initial anf final mass
Vif = 5 // Initial volume of water in m^3 
Viw = 5// Initial volume of gas in m^3 
Vff = 6  // Final volume of gas in m^3 
Vfw = 4 // Final volume of water in m^3 


printf("\n Example 9.11")
ms = ((Viw/vf)+(Vif/vg)) - ((Vfw/vf)+(Vff/vg)) 
U1 =  ((Viw*uf/vf)+(Vif*ug/vg))
Uf =  ((Vfw*uf/vf)+(Vff*ug/vg))
Q = Uf-U1+(ms*hg)
printf("\n The heat transfer during the process is %f MJ",Q/1e3)
//The answer provided in the textbook is wrong
