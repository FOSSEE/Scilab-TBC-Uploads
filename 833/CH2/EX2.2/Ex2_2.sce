//Caption:Find (a)Efficiency of transformer at half load at 0.8 power factor lagging (b)At what load will the efficiency be maximum and maximum efficiency?
//Exa:2.2
clc;
clear;
close;
P_s=25000//Power supplied(in VA)
V_1=3300//Voltage on primary side(in volts)
V_2=230//Voltage on secondary side(in volts)
f=50//frequency(in hertz)
P_i=300//Iron loss(in watt)
P_c=400//Copper loss(in watt)
pf=0.8//Power factor
Cu=P_c*(0.5^2)//Copper loss on half load
P_o=P_s*0.5*pf//Output of transformer on half load 
eff=(P_o)/(P_o+Cu+P_i)*100
disp(eff,'(a)Efficiency of transformer at half load(in %)=')
x=sqrt(P_i/P_c)*20000
disp(x,'(b)Load for maximum efficiency(in watt)=')
eff_max=(x)/(x+P_i+P_i)*100
disp(eff_max,'Maximum efficiency(in%)=')