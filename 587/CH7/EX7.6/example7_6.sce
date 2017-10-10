clear;
clc;

//Example7.6[Cooling of a Steel Ball by Forced Air]
//Given:-
rho=8055;//[kg/m^3]
Pr = 0.7296;
Cp=480;//[J/kg.degree Celcius]
To=300;//Temp of oven[degree Celcius]
Ta=25;//Temp of air[degree Celcius]
va=3;//Velocity of air[m/s]
Ts=200;//Dropped temp of surface of ball[degree Celcius]
Ts_avg=(Ts+To)/2;//[degree Celcius]
d=0.25;//[m]
mu_s=2.76*10^(-5);//Dynamic Viscosity at average surface temperature[kg/m.s]
//Properties of air at 25 degree Celcius
k=0.02551;//[W/m.degree Celcius]
nu=1.562*10^(-5);//kinematic viscosity[m^2/s]
mu=1.849*10^(-5);//Dynamic viscosity of air at 25 degree C[kg/m.s]
//Solution:-
Re=va*d/nu;//[Reynolds Number]
Nu=2+[(0.4*(Re^(1/2)))+(0.06*(Re^(2/3)))]*(Pr^(0.4))*((mu/mu_s)^(1/4));
disp(ceil(Nu),"The Nusselt number is")
h=k*Nu/d;//[W/m^2.degree Celcius]
As=%pi*(d^2);//[m^2]
Q_avg=h*As*(Ts_avg-Ta);//[W]
disp("W",ceil(Q_avg),"The average rate of heat transfer from Newtons Law of cooling is")
m=rho*%pi*(d^3)/6;//[kg]
Q_total=m*Cp*(To-Ts);//[J]
disp("J",Q_total,"The total heat transferred from the ball is")
delta_t=Q_total/Q_avg;//[s]
disp("hour",delta_t/3600,"The time of cooling is")