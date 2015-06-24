clc;
p1=0.1; // Pressure of air at inlet in MPa
T1=300; // Temperature of air at inlet in kelvin
p2=0.6; // Pressure of air at exit in MPa
T3=1200; // Maximun temperature of air in kelvin
k=1.4; // Index of reversible adiabatic process
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
// Brayton cycle
rp=p2/p1; // pressure ratio
T2=T1*(p2/p1)^((k-1)/k);// Temperature at the end of compression
T4=T3*(p1/p2)^((k-1)/k);// Temperature at state 4
Tx=T4; Ty=T2; // regenerator temperatures
qH=Cpo*(T3-Tx); // Heat added in the cycle with regenerator
qL=Cpo*(Ty-T1);// Heat rejected in the cycle with regenerator
eff_th=1-qL/qH; // Thermal efficiency
disp("%",eff_th*100,"Thermal efficiency with regenerator = ");
