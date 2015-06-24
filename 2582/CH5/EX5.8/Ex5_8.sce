//Ex 5.8
clc;clear;close;
format('v',5);
//vo/v1=1+R2/R1;//
//For v2/v1 i.e. gain=2, R1 & R2 should be equal
Vpp=10;//V
R1=10;//kohm
R2=10;//kohm
//Avg=1/T*integrate('Vpp*sin(2*%pi*t/T)','t',0,T/2);
Avg=-Vpp/(2*%pi)*[cos(%pi)-cos(0)];
disp(Avg,"Average output voltage(V) : ");
