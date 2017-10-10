//Resistance R, Voltage V
close();
clear;
clc;
Re = 300;//ohm
Rc = 500;//ohm
Vcc = 15;//V
Beta = 100;
Vcesat = 0;
Vbeq = 0.7;
Rb = Beta*Re/10;
//For maximum symmetrical swing
Icq = 1/2*(Vcc/(Re+Rc));
Vbb = Vbeq + Icq*Re*1.1;
R1 = Rb/(1-(Vbb/Vcc));
R2 = Rb*Vcc/Vbb;
mprintf('R1 = %0.2f k ohm\nR2 = %0.2f k ohm',R1/1000,R2/1000);