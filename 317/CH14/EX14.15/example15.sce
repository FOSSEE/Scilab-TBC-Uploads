// find Vgs,Id,gm,Vout
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 14-15, page 508

clear; clc; close;

// Given data
k=104*10^-3 ;// constant k of the E-MOSFET
Idon=600*10^-3 ;// in amperes 
Vgsth=2.1;// in volts
R1=10^6;// in ohms from the given figure
R2=350*10^3;// in ohms from the given figure
Vin=100*10^-3;// in volts from the given figure
Rd=68;// in ohms from the given figure
Rl=10^3;// in ohms from the given figure
Vdd=12;// drain cutoff voltage in volts from the given figure

// Calculations
Vg=(R2/(R1+R2))*Vdd ;// ground voltage in volts
Vgs=Vg;// Vgs = ground voltage
Id=k*([Vgs-Vgsth]^2)
gm=2*k*(Vgs-Vgsth);//transconductance in Seimens
rd=Rd*Rl/(Rd+Rl) ;// rd=Rd||Rl in ohms
Av=gm*rd;// voltage gain
Vout=Av*Vin;// output voltage in volts
disp("Volts",Vgs,"gate-source voltage=")
disp("Amperes",Id,"drain current=")
disp("Seimen",gm,"transconductane=")
disp("Volts",Vout,"output voltage=")

// Result
// Vgs is 3.11 Volts
// Drain current is 106 mAmperes 
// Transconductance is 210 mSeimens
// Output voltage is 1.34 mVolts