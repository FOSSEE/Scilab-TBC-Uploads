//Rated Power Pr,Open cicuit Voltage, Current and Power Vo, Io and Po
//Short cicuit Voltage, current and power Vs, Is and Ps
close();
clear;
clc;
Pr = 75000;
V1 = 230;
V2 = 115;
Vs = 9.5;
Is = 326;
Ps = 1200;
Vo = 115;//V
Io = 16.3;//A
Po = 750;//W
Zs = Vs/Is;
//Vs per unit 'Vsp'
Vsp = Vs/V1;
I1 = Pr/V1;
Isp = Is/I1;
Zsp = Vsp/Isp;
Psp = Ps/Pr;
Rsp = Psp/Isp^2;
Xsp = (Zsp^2-Rsp^2)^(1/2);
//For Pf= 0.8
V2 = 1;
Pf = 0.8;
theta = -acos(Pf);
V = 1;
I = Isp*cos(theta)+Isp*sin(theta)*%i
Z = Rsp + %i*Xsp;
Vo = V + I*Z;
Vor = polar(Vo);
V_reg = (Vor-V2)/V2*100;
nrated_load = Pr*Pf/(Pr*Pf+Po+Ps)*100;
nhalf = (Pr/2)/(Pr/2+Po+Ps/4)*100;
mprintf('Equivalent impedance in high voltage terms Zs = %0.3f ohm\nPer unit Zs = %0.4f pu\nVoltage regulation = %0.1f %%\nEfficiency at rated load = %0.2f %%\nEfficiency at half load = %0.2f %%',Zs,Zsp,V_reg,nrated_load,nhalf);
