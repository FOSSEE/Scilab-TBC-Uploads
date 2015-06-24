//Part A Chapter 7 Example 9
clc;
clear;
close;
p=800;//kPa
T=200//degree C
Tsat=170.43;//degree C(at 800kPa)
v1=0.2404;//m^3/kg(at 800kPa)
v2=0.2404;//m^3/kg(at 800kPa)
vg=v2;//m^3/kg//(at 800kPa)
T1=175;T2=170;//degree C(vg=0.2404;//m^3/kg)
vg1=0.2168;//m^3/kg
vg2=0.2428;//m^3/kg
T2_begin=T1-(T1-T2)*(v1-vg1)/(vg2-vg1);//degree C
p1=892;p2=791.7;//kPa(vg=0.2404;//m^3/kg)
p2_begin=p1-(p1-p2)*(v1-vg1)/(vg2-vg1);//degree C
disp("Pressure and temperature at condensation is "+string(p2_begin)+" kPa & "+string(T2_begin)+" degree C");
