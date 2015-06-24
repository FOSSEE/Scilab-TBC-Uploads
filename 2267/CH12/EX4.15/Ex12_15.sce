//Part B Chapter 4 Example 15
clc;
clear;
close;
l=3;//m
d1=85;//mm
d2=65;//mm
A=1*0.5;//m^2
Pw=2200;//N/mm^2
LG=Pw*A//N(Total Wind load at G)
M=LG*(3+0.25)//Nm(Max BM on pipe)
T=LG*(0.5+0.5);//Nm
I=%pi/64*(d1^4-d2^4);//mm^4
Z=I/42.5;//mm^3
Zp=2*Z;//mm^3
sigma_b=M*1000/Z;//N/mm^2
tau_s=T*1000/Zp;//N/mm^2
disp("Maximum bending stress is "+string(sigma_b)+" N/mm^2");
disp("Maximum shear stress is "+string(tau_s)+" N/mm^2");
