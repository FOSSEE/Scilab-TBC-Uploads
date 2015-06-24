//Part A Chapter 6 Example 1
clc;
clear;
close;
p1=5;//bar
T1=27+273;//K
p2=2;//bar
cp_air=1.004;//kJ/kgK
R=0.287;//kJ/kgK
T2=T1;//K(as cp*T1=cp*T2)
delta_s=cp_air*log(T2/T1)-R*log(p2/p1);//kJ/kgK
disp("Change in entropy = "+string(delta_s)+" kJ/kgK");
