clc;
R=0.274;
T1=1000+273;
v1!v2=1/7;
n=1.25;
T2=T1*(v1!v2)^(n-1);
sA_s1=R*log(1/v1!v2);

cv=0.925;
sA_s2=cv*log(T1/T2);
disp("change of entropy of mixture is:");
disp("kJ/kg K",sA_s1-sA_s2);
