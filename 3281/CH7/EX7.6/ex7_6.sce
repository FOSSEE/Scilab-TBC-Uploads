//Page Number: 373
//Example 7.6
clc;
//Given
f=4D+9; //Hz
V0=25D+3; //V
I0=3; //A
B0=0.3; //T
D=0.8;
Z0=50; //ohm
ebym=1.76D+11;

//(i) Electron beam phase constant
be=(2*%pi*f)/sqrt(2*ebym*V0);
disp('rad/s',be,'Electron beam phase constant:');

//(ii) Gain Parameter
C=((I0*Z0)/(4*V0))^(1/3);
disp(C,'Gain Parameter:');

//(iii) Length for oscillation condition
N=1.25/D;
l=(2*%pi*N)/be;
disp('m',l,'Length for oscillation condition:');
