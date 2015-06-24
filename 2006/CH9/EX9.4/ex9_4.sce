clc;
p1=0.1; // Pressure of air at inlet in MPa
T1=300; // Temperature of air at inlet in kelvin
p2=0.6; // Pressure of air at exit in MPa
T3=1200; // Maximun temperature of air in kelvin
k=1.4; // Index of reversible adiabatic process
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
eff_t=0.85; // Turbine efficiency
eff_c=0.8; // Compressor efficienct
// Brayton cycle
rp=p2/p1; // pressure ratio
T2s=T1*(p2/p1)^((k-1)/k);// Isentropic Temperature at the end of compression
T2=((T2s-T1)/eff_c)+T1; // Actual Temperature at the end of compression
p3=0.585; // as per given in MPa
p4s=0.11; // As per given in MPa
T4s=T3*(p4s/p3)^((k-1)/k); // Isentropic temperature after reversible adiabatic expansion
T4=T3-(eff_t*(T3-T4s));// Actual temperature at state 4
wc=Cpo*(T2-T1); // compressor work
wT=Cpo*(T3-T4); // Turbine work
qH=Cpo*(T3-T2); // heat addition
wnet=wT-wc; // net work
eff_th=wnet/qH; // thermal efficiency
rw=wnet/wT; // worh ratio
disp (rw,"Work Ratio = ","%",eff_th*100,"Thermal Efficiency = ");
