clear;
clc;

//Example9.4[Heat Loss through a Double Pane Window]
//Given:-
H=0.8;//Height[m]
L=0.02;//Air gap[m]
w=2;//Width[m]
T1=12,T2=2;//Glass Surface temperatures across the air gap
Tavg=(T1+T2)/2;//[degree Celcius]
k=0.02416;//[W/m.degree Celcius]
Pr=0.7344;//Prandtl Number
nu=1.4*10^(-5);//Kinematic Viscosity[m^2/s]
g=9.81;//[m/s^2]
//Solution:-
Lc=L;//Characteristic length
b=1/(Tavg+273);//[K^-1]
Ra_L=g*b*(T1-T2)*Pr*(Lc^3)/(nu^2);
disp(Ra_L,"The Rayleigh Number is")
Nu=0.42*(Ra_L^(1/4))*(Pr^(0.012))*((H/L)^(-0.3));
disp(Nu,"The Nusselt Number is")
As=H*w;//[m^2]
h=k*Nu/L;//[W/m^2.degree Celcius]
Q=h*As*(T1-T2);
disp("W",Q,"Rate at which Heat is Lost through the window is")