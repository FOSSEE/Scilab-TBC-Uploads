//Caption:Determine the efficiency of transformer at (a)full load and 0.85pf (b)75 percent of full load and unity pf (c)max efficieny at unity pf
//Exa:4.3
clc;
clear;
close;
P=100*1000;//in watts
P_iron=1500;//in watts
x=0.8;
P_cu=1500/x^2;//in watts
pf=0.8;
a=5000/400;//transformation ratio
P_t=P_iron+P_cu;
P_o=0.85*P;//in watts
Eff=P_o/(P_o+P_t);
disp(Eff*100,'(a)Efficiency at full load and 0.85pf (in %)=');
P_cu_1=0.75*P_cu;//in watts
P_t_1=P_cu_1+P_iron;//in watts
P_o_1=0.75*P;
Eff_1=P_o_1/(P_o_1+P_t_1);
disp(Eff_1*100,'(b)Efficiency at 75 percent of full load and unity pf(in %)=');
P_t_2=2*P_iron;
P_o_2=P;
Eff_2=P_o_2/(P_o_2+P_t_2);
disp(Eff_2*100,'(c)max efficieny at unity pf(in %)=');