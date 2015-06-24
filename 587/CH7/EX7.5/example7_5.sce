clear;
clc;

//Example7.5[Heat Loss from a Steam Pipe in Windy Air]
d=0.1//diameter of pipe[m]
Ts=110;//Temp of ecternal surface of pipe[degree Celcius]
Ta=10;//Temp of air[degree Celcius]
va=8;//Velocity of air[m/s]
Tf=(Ts+Ta)/2;//Film temperature[degree Celcius]
k=0.02808;//[W/m.degree Celcius]
Pr=0.7202;//Prandtl Number
nu=1.896*10^(-5);//Kinematic viscosity[m^2/s]
//Solution:-
Re=(va*d)/nu;//Reynolds Number
Nu=0.3+((0.62*(Re^(0.5))*(Pr^(1/3)))/((1+((0.4/Pr)^(2/3)))^(1/4))*[(1+((Re/282000)^(5/8)))^(4/5)]);
disp(round(Nu),"The nusselt number is")
h=k*Nu/d;//[W/m^2.degree Celcius]
As=%pi*d*1;//Area of pipe per unit length[m^2]
Q=h*As*(Ts-Ta);//[W]
disp("W",ceil(Q),"The rate of heat loss from the pipe per unit of its length is")