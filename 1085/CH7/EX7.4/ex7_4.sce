//Exam:7.4
clc;
clear;
close;
D_500=4.8*10^(-14);//Diffusion coefficient for copper in aluminimum at 500*C(in m^2/s)
D_600=5.3*10^(-13);//Diffusion coefficient for copper in aluminimum at 600*C(in m^2/s)
t_600=10;//time of diffussion at 600*C(in Hours)
//D_500*t_500=D_600*t_600
t_500=D_600*t_600/D_500;//time of diffussion at 500*C
disp(t_500,'Time at 500*C that will produce the same diffusion as in 600*C(in Hours)=');