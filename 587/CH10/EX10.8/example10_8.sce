clear;
clc;

//Example10.8[Replacing a Heat Pipe by a Copper Rod]
//Given:-
L=0.3;//[m]
D=0.006;//[m]
Q=180;//[W]
del_T=3;//Temperature Difference [degree Celcius]
//Properties of copper at room temperature
rho=8933;//[kg/m^3]
k=401;//[W/m.degree Celcius]
//Solution:-
A=Q*L/(k*del_T);//[m^2]
d=sqrt(4*A/%pi);//[m]
disp("cm",ceil(100*d),"The diameter of the copper pipe is")
m=rho*A*L;//[kg]
disp("kg",round(m),"Mass of the copper rod is")