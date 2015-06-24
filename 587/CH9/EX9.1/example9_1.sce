clear;
clc;

//Example9.1[Heat Loss from Hot Water Pipes]
//Given:-
l=6;//Length[m]
d=0.08;//diameter[m]
T_room=20;//[degree Celcius]
Ts=70;//Surface temperature of pipe[degree Celcius]
Tf=(Ts+T_room)/2;//Film temperature[degree Celcius]
//Properties of air at Tf
k=0.02699;//[W/m.degree Celcius]
Pr=0.7241;//Prandtl number
nu=1.750*10^(-5);//[m^2/s]
b=(1/(Tf+273));//[K^-1]
g=9.81;//Acc dur to gravity[m/s^2]
e=1;//Emissivity
//Solution:-
Lc=d;//Characteristic length[m]
Ra_d=g*b*(Ts-T_room)*(d^3)*Pr/(nu^2);
disp(Ra_d,"The Rayleigh number is")
Nu=((0.6+((0.387*(Ra_d^(1/6)))/((1+((0.559/Pr)^(9/16)))^(8/27))))^2);
disp(Nu," The natural convection Nusselt number is")
h=k*Nu/d;//[W/m^2.degree Celcius]
As=%pi*d*l;//[m^2]
Q=h*As*(Ts-T_room);//[W]
disp("by natural convection","W",round(Q),"The pipe loses heat to the air in the room at a rate of")
Q_rad=e*As*(5.76*10^(-8))*(((Ts+273)^4)-((T_room+273)^4));//[W]
disp("W",ceil(Q_rad),"The radiation heat transfer is")


