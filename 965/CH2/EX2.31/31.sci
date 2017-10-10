clc;
clear all;
disp("Maximum system temperature")
La=0.02;//m
Lb=0.01;//m
kA=50;//W/(m*C)
kB=0.2;//W/(m*C)
h1=200;//W/(m^2*C)
h2=50;//W/(m^2*C)
A=0.15*0.15;//m^2
A
Q=1000;//W rating of heater
Q
ta=25;// degree C
//Q=A*(Tmax-ta)*(1/(La/kA+1/h1)+1/(Lb/kB+1/h2))
Tmax=Q/(A*(1/(La/kA+1/h1)+1/(Lb/kB+1/h2)))+ta;
disp("degree C",Tmax,"Tmax =")

disp("To find outer surface temperature of two slabs")
//QA=kA*A*(tmax-t1)/La=h1*A*(t1-ta)
t1=249.8/1.08;
disp("degree C",t1,"temperature t1 =")
//QB=kB*A*(tmax-t2)/La=h2*A*(t2-ta)
t2=310.3/3.5;
disp("degree C",t2,"temperature t2 =")


