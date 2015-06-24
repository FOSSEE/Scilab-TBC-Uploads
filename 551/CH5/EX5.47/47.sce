clc
m1=3; //kg
m2=4; //kg
T0=273; //K
T1=80+273; //K
T2=15+273; //K
c_pw=4.187; //kJ/kgK
tm=(m1*T1 + m2*T2)/(m1+m2);
Si=m1*c_pw*log(T1/T0) + m2*c_pw*log(T2/T0);
Sf=(m1+m2)*c_pw*log(tm/T0);
dS=Sf-Si;
disp("Net change in entropy =")
disp(dS)
disp("kJ/K")