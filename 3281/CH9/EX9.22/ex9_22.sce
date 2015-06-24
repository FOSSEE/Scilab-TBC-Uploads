//Page Number: 503
//Example 9.22
clc;
//Given
e=1.6D-19;
N=4D+21; //m
L=10D-6; //m
e0=8.854D-12;
er=11;

//Breakdown voltage
Vbd=(e*N*L*L)/(e0*er);
disp('V',round(Vbd),'Breakdown voltage:');

//Breakdown electric field
E=Vbd/L;
disp('V/m',E,'Breakdown electric field:');
