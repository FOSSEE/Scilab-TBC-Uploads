//Example 1_15
clc;
clear;close;

//Given data: 
Irms=40;//A
f=50;//Hz
period1=170;//degree
period2=100;//degree
period3=40;//degree
//part (a)
alfa1=%pi-period1*%pi/180;//degree
Irms_by_Im=sqrt(1/2/%pi*((%pi-alfa1)/2+sin(2*alfa1)/4));
Im=Irms/Irms_by_Im;//A
Iav1=Im/2/%pi*(1+cos(alfa1));//A
disp(Iav1,"(a) Average current (in A) : ");
//part (b)
alfa2=%pi-period2*%pi/180;//degree
Irms_by_Im=sqrt(1/2/%pi*((%pi-alfa2)/2+sin(2*alfa2)/4));
Im=Irms/Irms_by_Im;//A
Iav2=Im/2/%pi*(1+cos(alfa2));//A
disp(Iav2,"(b) Average current (in A) : ");
//part (c)
alfa3=%pi-period3*%pi/180;//radian
Irms_by_Im=sqrt(1/2/%pi*((%pi-alfa3)/2+sin(2*alfa3)/4));
Im=Irms/Irms_by_Im;//A
Iav3=Im/2/%pi*(1+cos(alfa3));//A
disp(Iav3,"(c) Average current (in A) : ");
