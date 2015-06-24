clear;
clc;

//Example6.1[Temperature Rise of Oil is a Journal Bearing]
//Given:-
k=0.145;//[W/m.K]
mu=0.8374;//[kg/m.s]or[N.s/m^2]
T1=20;//Temperature of both the plates[degree Celcius]
t=0.002;//Thickness of oil film between the plates[m]
v=12;//Velocity with which plates move[m/s]
//Solution (a):-
//Relation between velocity and temperature variation
disp("T(y)=T0+(mu*(v^2)/(2*k))[(y/L)-((y/L)^2)]")
//Solution(b):-
//The location of maximum temperature is determined by setting dT/dy=0 and solving for y
//(mu*(v^2)/(2*k*L))*(1-(2*y/L))=0
L=1;//Random initialisation of variable L, where L is length of plates
y=L/2;
//T_max=T(L/2)
T_max=T1+((mu*(v^2)/(2*k))*(((L/2)/L)-(((L/2)^2)/(L^2))));
disp("degree Celcius",ceil(T_max),"Maximum temperature occurs at mid plane and its value is")
//heat flux q0=-kdt/dy|y=0;=-kmu*v^2/(2*k*L)
q0=-(mu*k*(v^2)/(2*k*t))/1000;//Heat flux from one plate [kW/m^2]
qL=-((k*mu*(v^2))*(1-2)/(2*k*t*1000));//Heat flux from another plate[kW/m^2]
disp("kW/m^2",qL,"Heat fluxes at the two plates are equal in magnitude but opposite in sign and the value of magnitude is")
