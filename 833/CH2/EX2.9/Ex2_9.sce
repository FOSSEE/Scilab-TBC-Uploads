//Caption: Find how they will share 750KVA load at 0.8 power factor lagging
//Exa:2.9
clc;
clear;
close;
P_s1=500000//Supplied power(in VA) to first transformer
r_1=0.01//Per unit resistance of first transformer
x_1=0.05//Per unit reactance of first transformer
P_s2=250000//Supplied power(in VA) to second transformer
r_2=0.015//Per unit resistance of second transformer
x_2=0.04//Per unit reactance of second transformer
P_l=750000//Load(in VA)
pf=0.8//Powerfactor lagging
V_2=400//Secondary voltage of each transformer(in volts)
Z_1=r_1+(%i*x_1)
Z_2=((2*r_2)+(2*%i*x_2))
Z=Z_1+Z_2
S=P_l*(pf-(%i*(sind(acosd(pf)))))
S_1=(S*Z_2)/(Z)
s_1=sqrt(((real(S_1))^2)+((imag(S_1)^2)))
disp(s_1,'Load on first transformer(in VA)=')
S_2=(S*Z_1)/(Z)
s_2=sqrt(((real(S_2))^2)+((imag(S_2)^2)))
disp(s_2,'Load on second transformer(inVA)=')