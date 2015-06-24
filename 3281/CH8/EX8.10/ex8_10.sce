//Page Number: 434
//Example 8.10
clc;
//Given
Qmax=0.05D-12; //C
f=10D+6; //Hz
V=10; //V
n=3;

//Power disspated per bit
P=n*f*V*Qmax;
disp('muW',P*10^6,'Power disspated per bit:');
