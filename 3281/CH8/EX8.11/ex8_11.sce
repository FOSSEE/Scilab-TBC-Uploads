//Page Number: 434
//Example 8.11
clc;
//Given
e0=8.854D-12;
er=3.9;
d=0.15D-6; //m
e=1.6D-19; //J
Nmax=2.2D+16; //m-2
A=0.6D-8; //m
P=0.67D-3; //W
n=3;

//(i) Junction capacitance
Ci=(e0*er)/d;

//Gate voltage
V=(Nmax*e)/Ci;
disp('V',V,'Gate voltage:');

//(ii) Charge stored
Qmax=Nmax*e*A;

//Clock frequency
f=P/(n*V*Qmax);
disp('MHz',f/10^6,'Clock frequency:');
