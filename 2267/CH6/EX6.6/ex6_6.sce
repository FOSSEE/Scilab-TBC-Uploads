//Part A Chapter 6 Example 6
clc;
clear;
close;
m1=1;//kg
m2=0.5;//kg
T1=150+273;//K
T2=0+273;//K
cp1=0.393;//kJ/kgK
cp2=0.381;//kJ/kgK
//m1*cp1*(T1-Tf)=m2*cp2*(Tf-T2);
Tf=(m1*cp1*T1+m2*cp2*T2)/(m2*cp2+m1*cp1);//K
delta_S1=m1*cp1*log(Tf/T1);//kJ/K
delta_S2=m2*cp2*log(Tf/T2);//kJ/K
deltaS_universe=delta_S1+delta_S2;//kJ/K
disp("Change in entropy of universe = "+string(deltaS_universe)+" kJ/K");
