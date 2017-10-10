clc;
clear all;
disp("heat flow rate")
L=25/1000;//m 
qg=30*10^(6);// W/m^3
k=48;// W/(m*C)
tw1=180;// degree C
tw2=120;//degree C

//t=180+5412.5*x-312500*x*x
// gradT=5412.5-2*312500*x
x=5412.5/(2*312500);
Tmax=180+5412.5*x-312500*x*x;// degree C
disp ("degree C",Tmax,"Tmax=","mm",x*1000,"x =","value and position of maximum temperature are ")
x=0;//  at the left face
gradT=5412.5-2*312500*x;
Q=-k*A*gradT;
disp("W/(m^2)",Q,"heat flow at the left face Q = ")
x=L;//  at the right face
gradT=5412.5-2*312500*x;
Q=k*A*gradT;
disp("W/(m^2)",Q,"heat flow at the right face Q = ")
