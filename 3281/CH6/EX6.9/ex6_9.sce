//Page Number: 335
//Example 6.9
clc;
//Given
I0=500D-3; //A
V0=10D+3; //V
Z0=25; //ohm
l=.20; //m
f=5.93D+9; //Hz

//Gain parameter
C=((I0*Z0)/(4*V0))^(1/3);
disp(C,'Gain parameter:');

N=(l*f)/(0.593D+6*sqrt(V0));
//Gain
Ap=-9.54+(47.3*C*N);
disp('dB',Ap,'Gain of TWT:');
