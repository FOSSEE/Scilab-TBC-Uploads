clc;
clear all;
disp("heat transfer coefficient")
Theater=350;// degree C
Tsolution=95;// degree C
xCI=0.025;///m
xenamel=0.8*10^(-3);//m
hsol=5.5*10^(3);//W/(m^2*K)
kCI=50;//W/(m*K)
kenamel=1.05;//W/(m*K)
U=1/(xCI/kCI+xenamel/kenamel+1/hsol);
disp("W/(m*K)",U,"overall heat transfer coefficient U= ")
Q=U*(Theater-Tsolution);
disp("kW/m^2",Q/1000,"rate of heat transfer per unit area = ")
