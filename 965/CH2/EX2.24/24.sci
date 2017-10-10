clc;
clear all;
disp("rate of heat removal")
La=0.003;//m 
Lb=0.05;//m 
Lc=0.003;//m 
kA=46.5;//W/(m*C) 
kB=0.046;//W/(m*C) 
kC=46.5;//W/(m*C) 
h0=11.6;//W/(m^2*C)
hi=14.5;//W/(m^2*C)
t0=25;// degree C temperature 
ti=6;// degree C temperature 
A=0.5*0.5*2+0.5*1*4;
Q=A*(t0-ti)/(1/h0+La/kA+Lb/kB+Lc/kC+1/hi); 
disp("W",Q,"rate of heat removal = ")
//Q=h0*A*(25-t1)
t1=25-Q/(h0*A);// degree C temperature of outer surface
disp ("degree C",t1,"temperature of outer surface of metal sheet= ")

