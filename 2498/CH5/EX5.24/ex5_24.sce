// Exa 5.24
clc;
clear;
close;
// Given data
format('v',6)
A = 4000;
R1 = 1;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 9;// in k ohm
R2 = R2 * 10^3;// in ohm
Beta = R1/(R1+R2);// feedback fraction 
disp(Beta,"The feedback fraction is");
// The overall voltage gain with feedback 
Af = A/(1+(A*Beta));
disp(Af,"The overall voltage gain with feedback is");
Vs = 2;// in mV
//Af = Vo/Vs;
// The output voltage 
Vo = Af*Vs;// in mV
disp(Vo,"The output voltage in mV is");
