//Example 2_18
clc;
clear;close;

//Given data: 
Vs=400;//V
f=50;//Hz
Idc=150;//A
alfa=60;//degree

//Solution :
Vm=Vs*sqrt(2)/sqrt(3);//V
Vdc=3*sqrt(3)/%pi*Vm*cosd(alfa)//V
Pdc=Vdc*Idc;//W
disp(Pdc,"Output power, Pdc(W)");
Iavg=Idc/3;//A
disp(Iavg,"Average thyristor current(A)");
Irms=Idc/sqrt(3);//A
disp(Irms,"RMS value of thyristor current(A)");
Ipeak=Idc;//A
disp(Ipeak,"Peak current through thyristor(A)");
PIV=sqrt(2)*Vs;//V
disp(PIV,"Peak inverse voltage(V)");
//Answer of first part in the book is wrong.
