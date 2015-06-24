//Example 2_19
clc;
clear;close;

//Given data: 
V=415;//V
Vdc=460;//V
I=200;//A
f=50;//Hz

//Solution :
Vm=V*sqrt(2)/sqrt(3);//V
alfa=acosd(Vdc/(3*sqrt(3)/%pi*Vm));//degree
disp(alfa,"Converter firing angle(degree)");
Pdc=Vdc*I;//W
disp(Pdc/1000,"dc power(kW)");
IL=I*sqrt(120/180);//A
disp(IL,"AC line current(A)");
Ipeak=I;//A
Irms=Ipeak*sqrt(120/360);//A
disp(Irms,"RMS value of thyristor current(A)");
Iavg=Ipeak/3;//A
disp(Iavg,"Average thyristor current(A)");
