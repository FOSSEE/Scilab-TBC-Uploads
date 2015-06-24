//Exa 5.1
clc;
clear;
close;
//given data
ND=10^17;//in atoms/cm^3
NA=0.5*10^16;//in atoms/cm^3
Vo=0.7;//in Volts
V=-10;//in Volts
ND=ND*10^6;//in atoms/m^3
NA=NA*10^6;//in atoms/m^3
epsilon=8.85*10^-11;//in F/m
e=1.6*10^-19;//coulamb
//part (i)
disp("When no external voltage is applied i.e. V=0");
disp("VB = 0.7 volts");
VB=0.7;//in Volts
W=sqrt(2*epsilon*VB*(1/NA+1/ND)/e);//in m
disp(W,"When no external voltage is applied, Junction width in meter : ");
//part (ii)
disp("When external voltage of -10 volt is applied");
disp("VB = Vo-V volts");
VB=Vo-V;//in Volts
W=sqrt(2*epsilon*VB*(1/NA+1/ND)/e);//in m
disp(W,"When external voltage of -10 Volt is applied, Junction width in meter : ");