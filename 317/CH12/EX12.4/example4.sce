// calculate transistor power dissipation and efficiency  
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-4, page 387

clear;clc; close;
// Given data
R1=490;// in ohms
R2=68;// in ohms
Rc=120;// in ohms
Re=20;// in ohms
Vcc=30;// in volts
Rl=180;// in ohms
Ri=100;// input independence in ohms
PP=18;// peak-to-peak voltage in volts
Vin=200*10^-3;// in volts
Vc=12;// in volts

// Calculations
Vb=R2*Vcc/(R2+R1);// in volts
Ve=Vb-0.7;
Ie=Ve/Re;// in amperes
Icq=Ie;// dc collector current in amperes
Vceq=Vc-Ve;// dc collector-emitter voltage in volts
Pdq=Vceq*Icq;// transistor power dissipation
// to find stage efficiency
Ibias=Vcc/(R1+R2);// in amperes
Idc=Ibias+Icq;// in amperes
Pdc=Idc*Vcc;// dc input power in watts
Pout=(PP)^2/(8*Rl);// ac output power in watts
n=(Pout/Pdc)*100;// efficiency
disp("Watts",Pdq,"transistor power dissipation=")
disp("%",n,"efficiency=")

// Results
// transistor power dissipation is 1.34 watts  
// efficiency of stage is 3.72%
