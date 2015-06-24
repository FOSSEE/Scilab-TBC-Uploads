clear;
clc;
close;
disp("Example 11.4")

Tc=2999 //in K
Ccr=2432 //in m/s
gm=1.26
f=4.02
R=((Ccr*gm*(2/(gm+1))^((gm+1)/(2*(gm-1))))^2)/(gm*Tc)
disp(R,"Combustion gas constant R in J/kg.K:")
RU=8314.6 //in j/kmol.K
MW=RU/R
disp(MW,"Molecular weight of the mixture in kg/kmol :")