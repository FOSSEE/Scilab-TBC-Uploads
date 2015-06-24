//Find Resistivity
//Ex:15.4
clc;
clear;
close;
p_cu=0.015*10^-6;//resistivity of copper in ohm-m
p_ni=0.012*10^-6;//resistivity of nickel in ohm-m
p_ag=0.016*10^-6;//resistivity of silver in ohm-m
c1=0.25;//atomic % of nickel
c2=0.4;//atomic % of silver
p=p_cu+(c1*p_ni)+(c2*p_ag);
disp(p,"Resistivity of Cu-Ni-Ag alloy at 300 K (in ohm-m) = ");