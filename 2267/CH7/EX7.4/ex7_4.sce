//Part A Chapter 7 Example 4
clc;
clear;
close;
T=110+273.15;//K
h=50;//cm
p=143.47;//kPa(at 110 degree C)
g=9.81;//ravity constant
p_dash=p-(1000*g*h/100)/1000;//kPa(pressure at 50 cm depth)
Tsat=108.866;//degree C(for pdash=138.365 kPa);
disp("Pressure at 50 cm depth is "+string(p_dash)+" kPa. From steam table, Boiling point = "+string(Tsat)+" degree C");

