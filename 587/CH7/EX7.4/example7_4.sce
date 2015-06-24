clear;
clc;

//Example7.4[Drag Force Acting on a Pipe in a River]
//Given:-
T_water=15;//[degree Celcius]
vw=4;//Velocity of water[m/s]
od=0.022;//Outer diameter of pipe[m]
w=30;//width of river[m]
//At 15 degree C properties of water
rho=999.1;//[kg/m^3]
mu=1.138*10^(-3);//viscosity[kg/m.s]
Re=(rho*vw*od)/mu;//Reynolds number
Cd=1.0;//Dreag coefficient
A=w*od;//Frontal area for flow past a cylinder[m^2]
Fd=Cd*A*rho*(vw^2)/2;//[N]
disp("kN",Fd/1000,"The drag force acting on the pipe is")