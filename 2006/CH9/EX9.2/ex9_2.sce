clc;
r=18; // Compression ratio of an engine
p1=100; // Pressure of air before compression in lPa
T1=300; // Temperature air before compression in kelvin
qH=1800; // Heat added to the air in kJ/kg
k=1.4; // Index of reversible adiabatic process
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
//   Diesel cycle
// state 2
T2=T1*(r)^(k-1); // Temperature at the end of compression
p2=p1*(r)^k; // Pressure at the end of compression
// state 3
T3=(qH/Cpo)+T2; // Temperatue after heat addition
p3=p2; //constant pressure
Tmax=T3; // maximum temperature
Pmax=p3; // Maximum pressure
// state 4
v3=R*T3/p3; // Specific volume at state 3
v4=R*T1/p1; // Specific volume at state 4
T4=T3*(v3/v4)^(k-1); // Temperature after expansion
p4=p3*(v3/v4)^k; // Pressure after expansion
qL=Cvo*(T4-T1); // Heat rejected
wnet=qH-qL; // net work
eff_th=wnet/qH; // thermal efficiency
v1=R*T1/p1; // Specific volume at state 1
v2=v1/r; // Specific volume at state 2
pm=wnet/(v1-v2); // Mean effective pressure
disp ("kPa",pm,"Mean effective pressure = (Error in textbook) ","%",eff_th*100,"Thermal efficienvy = ","K",Tmax,"Maximum Temperature = ","kPa",Pmax,"Maximum pressure = ");
