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
wc=Cpo*(T2-T1); // compressor work
T4=T3*(p1/p2)^((k-1)/k);// Temperature at the end of expansion
wT=Cpo*(T3-T4); // Turbine work
qH=Cpo*(T3-T2); // heat addition
wnet=wT-wc; // net work
eff_th=wnet/qH; // thermal efficiency
rw=wnet/wT; // worh ratio
disp (rw,"Work Ratio = ","%",eff_th*100,"Thermal Efficiency = ");
