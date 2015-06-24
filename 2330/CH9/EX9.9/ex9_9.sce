// Example 9.9
format('v',6)
clc;
clear;
close;
// given data
V_CC= 12;// in V
V_BE= 0.7;// in V
R_C= 1*10^3;// in Ω
R_E= 240;// in Ω
r_L= 500;// in Ω
bita= 200;// unit less
// The required collector current,
I_CQ= V_CC/(R_C+R_E+r_L);// in A
// The emitter voltage,
V_E= I_CQ*R_E;// in V
// The base voltage,
V_B= V_E+V_BE;// in V
I_C= I_CQ;// in A
I_B= I_C/bita;// in A
// The total resistance of the voltage divider,
R= V_CC/(10*I_B);// in Ω
R2= V_B/(10*I_B);// in Ω
R1= R-R2;// in Ω
R1= R1*10^-3;// in k ohm
R2= R2*10^-3;// in k ohm
R_C= R_C*10^-3;// in k ohm
disp("The value of R1 is    : "+string(R1)+" kΩ  (standard value : 27 kΩ)")
disp("The value of R2 is    : "+string(R2)+" kΩ  (standard value : 6.8 kΩ)")
disp("The value of R_E is   : "+string(R_E)+" Ω  (standard value : 240 Ω)")
disp("The value of R_C is   : "+string(R_C)+" kΩ  (standard value : 1 kΩ)")

 
