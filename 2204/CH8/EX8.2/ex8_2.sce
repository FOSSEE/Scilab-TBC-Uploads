// Exa 8.2
clc;
clear;
close;
// Given data
NMH= 1;// in V
VIH= 2;// in V
VTon= 0.5;// in V
VOL= 0.2;// in V
VDD= 3;// in V
KP= 30*10^-6;// in A/V^2
PD= 100*10^-6;// power dissipation in W
// Formula VIH= VTon +2*sqrt(2*VDD/(3*kn*RL))-1/(kn*RL) (i)
// Let x= 1/(kn*RL), putting the values in (i), we get
// x^2-5*x+2.25=0
x= [1 -5 2.25];
x= roots(x);
x=x(2);
// Formula PD= VDD*(VDD-VOL)/(2*RL)
RL= VDD*(VDD-VOL)/(2*PD);// in Ω
disp(RL,"The value of RL in Ω is : ")
kn= 1/(x*RL);// in A/V^2
// Formula kn= KP*(W/L)
WbyL= kn/KP;
disp(WbyL,"The value of (W/L)n is : ")
