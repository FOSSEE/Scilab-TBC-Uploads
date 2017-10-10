clc;
rp=4; // Pressure ratio
eff_c=0.8; // Compressor efficiency 
N=15000; // Speed in rpm
T01=293; // Inlet temperature in kelvin
De=0.25; // Diameter of eye in m
C1=150; // Absolute velocity in m/s
Di=0.6; // Impeller diameter in m
a1=25; // in degree
Cp=1.005;// Specific heat   at constant pressure in kJ/kg K
Cv=0.717;// Specific heat   at constant volume in kJ/kg K
r=1.4; // Specific heat ratio 
R=287; // Characteristic gas constant in J/kg K

T02=T01*rp^((r-1)/r);
DelT_actual=(T02-T01)/eff_c;
P=Cp*10^3*DelT_actual; // Power input
u1=3.14*De*N/60;
ct1=C1*sind (a1);
// At Exit
u2=3.14*Di*N/60;
ct2=(P+(u1*ct1))/u2;
mu=ct2/u2; // Slip factor

disp (mu,"Slip Factor = ");

