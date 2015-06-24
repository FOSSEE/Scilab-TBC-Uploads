clc;
r=8; // Compression ratio of an engine
p1=100; // Pressure of air before compression in lPa
T1=300; // Temperature air before compression in kelvin
qH=1800; // Heat added to the air in kJ/kg
k=1.4; // Index of reversible adiabatic process
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
// Otto cycle
//  (1) state 2
p2=p1*(r)^k; // Pressure at the end of compression
T2=T1*(p2/p1)^((k-1)/k);// Temperature at the end of compression
disp ("K",T1,"Temperature air before compression =","kPa",p1,"Pressure of air before compression = ","(1).state 1");
disp ("K",T2,"Temperature at the end of compression =","kPa",p2,"Pressure of air at the end of compression = ","state 2");
// state 3
T3=(qH/Cvo)+T2; // Temperatue after heat addition
p3=p2*(T3/T2); // Pressure after heat addition
disp ("K   (round off error)",T3,"Temperature after heat addition =","kPa   (round off error)",p3,"Pressure after heat addition = ","state 3");
// state 4
p4=p3*(1/r)^k; // Pressure after expansion
T4=T3*(p4/p3)^((k-1)/k);// Temperature after expansion
disp ("K   (round off error)",T4,"Temperature after expansion =","kPa   (round off error)",p4,"Pressure after expansion = ","state 4");
//  (2).Thermal efficiency
qL=Cvo*(T4-T1); // Heat rejected
eff_th=1-qL/qH; // thermal efficiency
//   (3). Mean effective pressure
wnet=qH-qL; // net work
v1=R*T1/p1; // Specific volume at state 1
v2=v1/r; // Specific volume at state 2
pm=wnet/(v1-v2); // Mean effective pressure
disp ("kPa",pm,"(3).Mean effective pressure = ","%   (round off error)",eff_th*100,"(2).Thermal efficienvy = ");
