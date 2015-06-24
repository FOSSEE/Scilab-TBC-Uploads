clc;clear;
//Example 17.6

//given data
T1=400;
P1=100;
Ma1=0.3;
A21=0.8;//A2/A1

//assumption
k=1.4;

//from Table A–32
//at Ma1=0.3
//s stands for * symbol
A1s = 2.0351;//A1/As
T10 = 0.9823;//T1/T0
P10 = 0.9305;//P1/P0
A2s = A21*A1s;//A2/As
//at this value of A2/As
T20=0.9701;//T2/T0
P20=0.8993;//P2/P0
Ma2=0.391;

//calculations
T2=T1*T20/T10;
T2=floor(T2);
P2=P1*P20/P10;
disp(Ma2,'Ma2 is ');
disp(T2,'T2 in K is');
disp(P2,'P2 in kPa is')
