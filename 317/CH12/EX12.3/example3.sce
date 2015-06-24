// calculate power output gain
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-3, page 387

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

// Calculations
zinstage=490*68*100/((490*68)+(490*100)+(68*100));// in ohms
Pin=(Vin)^2/(8*zinstage);// ac input power in watts
Pout=(PP)^2/(8*Rl);// ac output power in watts
Ap=Pout/Pin;// power gain
disp(Ap,"Power gain=")

// Result
// power gain is 1682
