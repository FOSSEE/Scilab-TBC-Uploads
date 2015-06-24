//Example 3_5
clc;
clear;
close;
format('v',5);
//given data :
//Let T=1 for calculation
T=1;
//y=m*x, m=10/T & x=t
//i=10*t/T
Im=10;//A
Irms=sqrt(1/T*integrate('(10*t/T)^2','t',0,T));//V
disp(Irms,"rms value(A)");
Iav=Im/2;//A
disp(Iav,"Average value(A)");
Kf=Irms/Iav;//Form Factor
disp(Kf,"Form Factor")
