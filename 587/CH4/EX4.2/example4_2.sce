clear;
clc;

//Example4.2[Predicting the time of Death]
//Given:-
T_room=20;//Temperature of room[degree Celcius]
T_body_f=25;//Temperature of dead body after some time[degree Celcius]
T_body_i=37;//Temperature of dead body just after death[degree Celcius]
h=8;//Heat transfer Coefficient[W/m^2.degree Celcius]
L=1.7;//Length of body which is assumed to be cylindrical in shape[m]
r=0.15;//Radius of cylindrical body
//Average human body is 72% water by mass, thus we assumne body to have properties of water
rho=996;//Density[kg/m^3]
k=0.617;//Thermal conductivity[W/m.degree Celcius]
Cp=4178;//Specific Heat[J/kg.degree Celcius]
//Solution:-
Lc=(%pi*(r^2)*L)/((2*%pi*r*L)+(2*%pi*(r^2)));//Characteristic length of body[m]
Bi=(h*Lc)/k;//Biot no
if(Bi>0.1) then,
    disp("lumped system analysis is not applicable, but we can still use it to get a rough estimate of time of death")
    b=h/(rho*Cp*Lc);//[s^(-1)]
 x=(T_body_i-T_room)/(T_body_f-T_room);
//exp(-b*t)=x;
t=(1/b)*log(x);//time elapsed[seconds]
disp("hour",t/3600,"As a rough estimate the person dies about")
disp("before the body was found")
