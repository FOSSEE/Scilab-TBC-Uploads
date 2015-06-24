//Part A Chapter 6 Example 3
clc;
clear;
close;
R=8.314/32;//kJ/kgK
p1=125;//kPa
p2=375;//kPa
T1=27+273;//K
T2=T1;//K
delta_S=-R*log(p2/p1);//kJ/K;//kJ/kgK
disp("Change in entropy = "+string(delta_S)+" kJ/K");
