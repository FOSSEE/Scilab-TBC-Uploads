//Page Number: 333
//Example 6.6
clc;
//Given
I0=0.95; //A
V0=7D+3; //V
Z0=20; //ohm
N=20;

C=((I0*Z0)/(4*V0))^(1/3);
//Gain
Ap=-9.54+(47.3*C*N);
disp('dB',Ap,'Gain:');
