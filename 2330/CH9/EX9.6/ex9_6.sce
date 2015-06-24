// Example 9.6
format('v',6)
clc;
clear;
close;
// given data
V_CC= 12;// in V
V_BE= 0.7;// in V
I_CQ= 5*10^-3;// in A
bita= 200;// unit less
// The emitter voltage,
V_E= 0.1*V_CC;// in V
// The emitter current,
I_E= I_CQ;// in A
// The emitter resistance,
R_E= V_E/I_E;// in Ω
// The collector resistance,
R_C= 4*R_E;// in Ω
// The base voltage,
V_B= V_E+V_BE;// in V
I_C= I_CQ;// in A
I_B= I_C/bita;// in A
R= V_CC/(10*I_B);// in Ω
R2= V_B/(10*I_B);// in Ω
R1= R-R2;// in Ω
R1= R1*10^-3;// in k ohm
R2= R2*10^-3;// in k ohm
R_C= R_C*10^-3;// in k ohm
disp("The value of R1 is    : "+string(R1)+" kΩ  (standard value : 39 kΩ)")
disp("The value of R2 is    : "+string(R2)+" kΩ  (standard value : 7.5 kΩ)")
disp("The value of R_E is   : "+string(R_E)+" Ω  (standard value : 240 Ω)")
disp("The value of R_C is   : "+string(R_C)+" kΩ  (standard value : 1 kΩ)")
