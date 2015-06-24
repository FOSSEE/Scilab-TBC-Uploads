// Example 6.14;//voltage gain ,input & output resistance
clc;
clear;
close;
A= 500;// open voltage gain
Beta=0.01;// feedback ratio
Ri=3;//input resistance without feedback in kiilo ohms
Ro=20;//output resistance without feedback in kiilo ohms
Af=(A/(1+A*Beta));//Voltage gain is
Rif= (1+A*Beta)*Ri;//input RESISTANCE with feedback in kiilo ohms
Rof=(Ro/(1+Beta*A));//output resistance with feedback in killo ohms
disp(Rif,"input resistance with feedback in kiilo ohms is ")
disp(Rof,"output resistance with feedback in killo ohms is ")
