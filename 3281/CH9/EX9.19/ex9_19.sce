//Page Number: 498
//Example 9.19
clc;
//Given
n=0.1;
Vdc=100; //V
Idc=0.9; //A
t=0.01D-9; //s
f=16D+9; //Hz

//(i)Power output
Pdc=Vdc*Idc;
Pout=n*Pdc;
disp('W',Pout,'Power output:');

//(ii)Duty cycle
D=(t/2)+(1/(2*f));
disp('s',D,'Duty cycle:');
