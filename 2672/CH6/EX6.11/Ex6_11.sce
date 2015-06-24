//Example 6_11
clc;
clear;
close;
format('v',5);
//given data : 
V1=220;//V
N1ByN2=10/1;//turns ratio
V2=V1/N1ByN2;//V
Vm=sqrt(2)*V2;//V
Vdc=0.318*Vm;//V
disp(Vdc,"(a) dc output voltage(V) : " );
format('v',6);
PIV=Vm;//V
disp(PIV,"(b) PIV(V) : " );
