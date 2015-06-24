// calculate dc collector current,dc collector-emitter voltage,ac resistance seen by collector
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-6, page 391

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
disp("Amperes",Icq,"dc collector current=")
disp("Volts",Vceq,"dc collector-emitter voltage=")
disp("ohms",re,"ac resistance =")

// Results
// Icq=456 mAmperes,Vceq=4.7 ohms,re=8 ohms
