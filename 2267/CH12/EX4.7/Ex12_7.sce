//Part B Chapter 4 Example 7
clc;
clear;
close;
M=2.5*1000;//Nm
T=3.5*1000;//Nm
Te=sqrt(M^2+T^2)//Nm
Me=(M+sqrt(M^2+T^2))/2//Nm
tau_max=400*10^6;//N/m^2
d1=(Te*16/%pi/tau_max)^(1/3)*1000;//mm
sigma=750*10^6;//N/m^2
d2=(Me*32/%pi/sigma)^(1/3)*1000;//mm
d=max(d1,d2);//mm
disp("Suitable diameter is "+string(round(d))+" mm");
