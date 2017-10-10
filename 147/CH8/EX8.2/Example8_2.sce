//Base to base collector leakage current Icbo
close();
clear;
clc;
Beta = 100;
Icbo = 5*10^(-6);
//Part(a)
Ib = 0;
Iceo = (Beta+1)*Icbo;
//Part(b)
Ib = 40*10^(-6);
Ic = Beta*Ib + (Beta+1)*Icbo;
mprintf('(a):Iceo = %0.0f micro A \n(b):Ic = %0.3f mA',Iceo*10^(6),Ic*1000);