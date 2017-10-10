clc;
clear all;
disp("heat storage rate")
r1=0.3;//m inner radius of cylinder
r2=0.5;//m outer radius of cylinder
k=58;// W/(m*C)
a=0.004;//m^2/h
//T=800+1000*r-5000*r*r
//gradT=1000-10000*r
//Q=-k*A1*gradT; 
A1=2*3.1416*r1;
gradT1=1000-10000*r1
Q1=-k*A1*gradT1;//rate of heat flow at inside surface per unit length
disp("W/m",Q1,"rate of heat transfer (in outward direction) =")

A2=2*3.1416*r2;
gradT2=1000-10000*r2
Q2=-k*A2*gradT2;//rate of heat flow at outer surface per unit length
disp("W/m",Q2,"rate of heat transfer (in outward direction) =")

Q=Q1-Q2
disp("W/m",Q,"rate of heat storage per unit length")

//gradTtau=a*(1000/r-20000);
gradTtau1=a*(1000/r1-20000);// rate of change of temperature at the inner surface
gradTtau2=a*(1000/r2-20000);// rate of change of temperature at the outer surface

disp("degree C/h",gradTtau1,"rate of change of temperature at the inner surface")
disp("degree C/h",gradTtau2,"rate of change of temperature at the outer surface")
