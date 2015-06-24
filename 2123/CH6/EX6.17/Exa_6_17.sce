//Example No. 6.17
clc;
clear;
close;
format('v',7);

//Given Data : 
Vrms=415;//volt
f=50;//Hz
Vdc=Vrms/sqrt(1/%pi*integrate('1','t',0,2*%pi/3));
disp(Vdc,"Value of Vdc in Volts : ");
