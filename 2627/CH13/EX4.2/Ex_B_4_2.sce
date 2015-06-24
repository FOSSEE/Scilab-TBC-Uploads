//Ex 4.2
clc;clear;close;
format('v',6);
fc=500;//kHz
fm=10;//kHz
//Am=7.5*Vp & Ac=20*Vc
Em=7.5;//times of Vp
Ec=20;//times of Vp(unmodulated carrier)
disp("Part (a)");
f_usf=fc+fm;//kHz
disp(f_usf,"Upper side frequency(kHz)");
f_lsf=fc-fm;//kHz
disp(f_lsf,"Lower side frequency(kHz)");
disp("Part (b)");
m=Em/Ec;//modulation coefficient
disp(m,"Modulation coefficient");
M=100*m;//% modulation
disp(M,"% Modulation");
disp("Part (c)");
Ec1=Ec;//times of Vp(modulated carrier)
Eusf=m*Ec/2;//times of Vp
Elsf=m*Ec/2;//times of Vp
disp("Peak amplitude of modulated carrier is "+string(Ec1)+"*Vp");
disp("Upper & lower side frequency voltages, Eusf = Elsf = "+string(Eusf)+"*Vp");
disp("Part (d)");
Vmax=Ec+Em;//times of Vp
Vmin=Ec-Em;//times of Vp
disp("Maximum amplitude of envelope is "+string(Vmax)+"*Vp");
disp("Minimum amplitude of envelope is "+string(Vmin)+"*Vp");
