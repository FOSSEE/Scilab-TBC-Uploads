//Page Number: 332
//Example 6.2
clc;
//Given
I0=20D-3; //A
V0=4D+3; //V
Z0=100; //ohm
N=30;

C=((I0*Z0)/(4*V0))^(1/3);
//Gain
Ap=-9.54+(47.3*C*N);
disp('dB',Ap,'Gain:');
