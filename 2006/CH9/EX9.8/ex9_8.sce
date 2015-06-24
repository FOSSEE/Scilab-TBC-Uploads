clc;
p1=100; // Pressure of air at inlet in kPa
T1=288; // Temperature of air at inlet in kelvin
rp=12; // Pressure ratio of the compressor
T4=223; // Temperature at state 4
k=1.4; // Index of reversible adiabatic process
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
T3=T1; // From figure
// process 1-2
p2=12*p1; // Pressure at state 2
T2=T1*(p2/p1)^((k-1)/k); // Temperature at state 2
wc=Cpo*(T2-T1); // Compressor work
// process 2-3
qH=Cpo*(T2-T3); // Heat added
// process 3-4 cooling in regenerative heat exchanger
qregen=Cpo*(T3-T4); // cooling in regenerative heat exchanger
// process 4-5 Expander
T5=T4*(1/rp)^((k-1)/k); // Temperature at state 5
wE=Cpo*(T4-T5); // Expander work
// process 5-6 Refrigerating coil
T6=T4; // From figure 9.32
qL=Cpo*(T6-T5); // Heat rejected
// process 6-1 Heating in regenerative heat exchanger
qregen=Cpo*(T1-T6); // Heat supplied
wnet=qH-qL; // net work
cop=qL/wnet; // Cop of plant
disp (cop,"COP of the modified cycle =");
