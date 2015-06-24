// calculate ac load line saturation, cutoff points, maximum peak-to-peak output voltage  
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-7, page 392

clear;clc; close;
// Given data
R1=50;// in ohms
R2=100;// in ohms
Re=16;// in ohms
Vcc=12;// in volts
Rl=16;// in ohms

// Calculations
Vb=R2*Vcc/(R2+R1);// in volts
Ve=Vb-0.7;
Ie=Ve/Re;// in amperes
Icq=Ie;// dc collector current in amperes
Vceq=Vcc-Ve;// dc collector-emitter voltage in volts
re=Re/2;// in ohms,re=Re||Rl
icsat=Icq+(Vceq/re);// ac load line saturation in amperes
Vcecutoff=Vceq+(Icq*re);// cutoff point in volts
MPP=2*Icq*re;// MPP output voltage in Vpp
disp("Amperes",icsat,"ac load line saturation")
disp("Volts",Vcecutoff,"ac cutoff voltage")
disp("Volts",MPP,"maximum peak-to-peak output voltage=")

// Result
// ac load line saturation is 1.04 amperes
// cutoff voltage is 8.35 volts
// MPP output voltage is 7.3 Vpp.


