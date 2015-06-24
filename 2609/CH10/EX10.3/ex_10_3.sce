////Ex 10.3
clc;
clear;
close;
format('v',9);
//Vin=5*sin(omega*t)
Vm=5;//V
Vsat=7;//V
R1=68;//kohm
R2=82;//kohm
VUTP=R2*Vsat/(R1+R2);//V
fi=asind(VUTP/Vm);//degree
disp(fi,"Phase shift(degree)");
