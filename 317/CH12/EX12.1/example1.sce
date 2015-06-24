// calculate dc collector current,dc collector-emitter voltage,ac resistance seen by collector
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-1, page 384

clear;clc; close;

// Given data
R1=490;// in ohms
R2=68;// in ohms
Rc=120;// in ohms
Re=20;// in ohms
Vcc=30;// in volts
Rl=180;// in ohms
Vc=12;// in volts

// Calculations
Vb=R2*Vcc/(R2+R1);// in volts
Ve=Vb-0.7;
Ie=Ve/Re;// in amperes
Icq=Ie;// dc collector current in amperes
Vceq=Vc-Ve;// dc collector-emitter voltage in volts
rc=Rc*Rl/(Rc+Rl);// rc=Rc||Rl
disp("Amperes",Icq,"dc collector current=")
disp("Volts",Vceq,"dc collector-emitter voltage=")
disp("ohms",rc,"ac resistance =")

// Results
// dc collector current is 147 mAmperes  
// dc collector-emitter voltage is 9 volts
// ac resistance seen by collector is 72 ohms  


