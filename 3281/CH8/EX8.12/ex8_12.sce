//Page Number: 435
//Example 8.12
clc;
//Given
Qmax=0.06D-12; //C
f=20D+6; //Hz
V=10; //V
n=3;

//Power disspated per bit
P=n*f*V*Qmax;
disp('muW',P*10^6,'Power disspated per bit:');
