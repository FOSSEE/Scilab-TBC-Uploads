// Exa 4.6
clc;
clear;
close;
// Given data
Vrms=120;// in mV
Iav= 1.25;// in mA
I_max= 1/0.318*Iav;// in mA
Vmax= sqrt(2)*Vrms;// in mV
R2= Vmax/I_max;// in ohm
disp(R2,"Value of R2 in ohm")
// when input voltage is 60 volt
Vrms=60;// in mV
Vmax= sqrt(2)*Vrms;// in mV
I_max= Vmax/R2;// in mA
Iav= I_max*0.318;// in mA
disp(Iav,"Average value of meter current in mA")
