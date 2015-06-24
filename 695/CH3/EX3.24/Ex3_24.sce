//Caption:Calculate the efficiency of the transformer at 75 percent of full load and maximum efficiency
//Exa:3.24
clc;
clear;
close;
P_o=500;//in watts
Eff_fl=0.9;
Eff_hl=0.9;
P_cu=(((P_o-0.5*P_o)/Eff_fl)-0.5*P_o)*4/3;// in watts
P_i=0.5*P_cu;// in watts
Eff=P_o*0.75/(P_o*0.75+P_i+0.75^2*P_cu);
disp(Eff*100,'Efficiency of transformer at 75 percent of full load(in %)=');
P_o_max=P_o*sqrt(P_i/P_cu);
Eff_max=P_o_max/(P_o_max+P_i+P_i);
disp(Eff_max*100,'Maximum efficiency (in %)=')