//Exam:13.1
clc;
clear;
close; 
alpha=20*10^(-6);//linear coefficient of thermal expansion per°C
Sigma=-(172);//compressive stress MPa
T=20;//Temprature at which rod is stress free(in °C)
E=100*10^3;//modulus of elasticity (in MPa)
T_f=T-(Sigma/(alpha*E));//maximum temperature the rod may be heated without exceeding a compressive stress of 172 MPa
disp(T_f,'maximum temperature(in °C) the rod may be heated without exceeding a compressive stress of 172 MPa=');