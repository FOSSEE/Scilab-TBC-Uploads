clc;
clear all;
L=2*1e-6;//given inductance
C=15*1e-12;//given capacitance
//part a
fr=1/(2*%pi*sqrt(L*C));//resonant frequency
disp(fr,'resonant frequency is');
//part b
fr=50*1e6;//given resonant frequency
Ct=1/(4*%pi*%pi*fr*fr*L);//new capacitance
disp(Ct,'new capacitance for fr=50mhz is=');
//part c
C2=C*Ct/(C-Ct);///required series capacitance
disp(C2,'value of required series capacitance is');

