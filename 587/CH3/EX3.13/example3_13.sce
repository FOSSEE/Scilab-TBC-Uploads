clear;
clc;

//Example3.13[Heat Loss from Buried Steam Pipes]
//Given:-
T_esurf=10;//Surface temperatur of earth[degree Celcius]
T_psurf=80;//Outer surface temperature of pipe[degree Celcius]
k_soil=0.9//Thermal Conductivity of soil[W/m.degree Celcius]
L=30;//Length of pipe[m]
D=0.1;//Diameter of pipe[m]
z=0.5;//Depth at which pipe is kept[m]
//Solution:-
//Calculating shape factor
if(z>(1.5*D))then 
 S=(2*%pi*L)/(log((4*z)/D)), end;//[m]
 disp(S,"Shape factor is")
 Q_=S*k_soil*(T_psurf-T_esurf);//[W]
 disp("W",Q_,"The steady rate of heat transfer from the pipe is")   