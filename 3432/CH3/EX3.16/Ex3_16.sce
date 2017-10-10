//Example 3.16 DC Motor Transfer Function.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Coefficients of numerator and denominator of the transfer function
numb=[100];
denb=[0 101 10.1 1];

// Transfer function
Ns=poly(numb,'s','coeff');
Ds=poly(denb,'s','coeff');
sysb=syslin('c',Ns/Ds);

//gain (K) pole (P) and zeros (Z) of the system
temp=polfact(Ns);
Z=roots(Ns); //locations of zeros
P=roots(Ds); //locations of poles
K=temp(1); //first entry is always gain
disp( K,"Gain", P, "Poles",Z,"Zeros",)

//Transient response of DC Motor (consider velocity as output)
s=%s;
t=linspace(0,5,501);
y=csim('step',t,sysb*s) 
plot(t,y)
exec .\fig_settings.sci; //custom script for setting figure properties
title('Transient response of DC Motor','fontsize',3)
xlabel('$Time\,\, t(sec.)$','fontsize',3)
ylabel('$\omega\,\,(rad/sec)$','fontsize',3)
//------------------------------------------------------------------
