clear;
clc;

//Example4.9[Heat transfer from a Short Cylinder]
//Given:-
Ti=120;//Initial Temperature[degree Celcius]
T_ambient=25;//Temperature of atmospheric air[degree Celcius]
rho=8530;//density of brass cyliner[kg/m^3]
Cp=0.380;//Specific heat of brass cylinder[kJ/kg.degree Celcius]
r=0.05;//radius[m]
H=0.12;//Height of cylinder[m]
h=60;//convetcion heat transfer coefficient[W/m^2.degree Celcius]
a=3.39*(10^(-5));//Diffusivity of brass [m^2/s]
k=110;//Thermal conductivity of brass[W/m.degree Celcius]
L=0.06;//[m]
t=900;//[seconds]
//Solution:-
m=rho*(%pi*(r^2)*H);//mass of cylinder[kg]
Q_max=m*Cp*(Ti-T_ambient);//[kJ]
disp("At the center of the plane wall")
tau1=(a*t)/(L^2);
Bi1=(h*L)/k;
x=(Bi1^2)*tau1;
//For given x and Bi1
p=0.23;//(Q/Qmax) for plane wall
disp("At the center of the cylinder")
tau2=(a*t)/(r^2);
Bi2=(h*r)/k;
y=(Bi2^2)*tau2;
//For given y and Bi2
q=0.47;//(Q/Qmax) for infinite cylinder
Q=Q_max*(p+(q*(1-p)));//[kJ]
disp("kJ",ceil (Q),"The total heat transfer from the cylinder during the first 15 minutes of cooling is")