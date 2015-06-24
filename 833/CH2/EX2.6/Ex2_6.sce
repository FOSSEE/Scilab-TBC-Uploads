//Caption:Find voltage for h.v voltage side on full load at 0.8 power factor lagging when secondary terminal voltage is 240 volts
//Exa:2.6
clc;
clear;
close;
P_s=100000//Supplied power(in VA)
V_1=6600//Primary side voltage(in volt)
V_2=240//Secondary side voltage(in volt)
f=50//frequency(in hertz)
I_sh=5//short circuit test current(in A)
P_sh=109//short circuit test power(in watt)
V_sh=50//short circuit test voltage(in volt)
pf=0.8//Power factor
Z=V_sh/I_sh
R=P_sh/(I_sh^2)
X=sqrt(Z^2-R^2)
I_l=P_s/V_1
Re=(I_l*R*pf)+(I_l*X*sind(acosd(pf)))
V_r=Re+V_1
disp(V_r,'Voltage for high voltage side on full load at 0.8 power factor lagging when secondary terminal voltage is 240 volts(in volt)=')