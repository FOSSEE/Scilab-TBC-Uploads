clear;
clc;

//Example4.7[Surface Temperature Rise of Heated Blocks]
//Given:-
flux=1250;//Constant solar heat flux[W/m^2]
T=20;//Temperature of black painted wood block[degree Celcius]
k_wood=1.26;//Thermal conductivity of wood at room temperature[W/m.K]
a_wood=1.1*(10^(-5));//Diffusivity of wood at room temperature[m^2/s]
k_aluminium=237;//Thermal conductivity of aluminium at room temperature[W/m.K]
a_aluminium=9.71*(10^(-5));//Diffusivity of aluminium at room temperature[m^2/s]
t=20*60;//[seconds]
//Solution:-
Ts_wood=T+((flux/k_wood)*(sqrt((4*a_wood*t)/%pi)));//[degree Celcius]
Ts_aluminium=T+((flux/k_aluminium)*(sqrt((4*a_aluminium*t)/%pi)));//[degree Celcius]
disp("respectively","degree Celcius",round (Ts_aluminium),"and",ceil (Ts_wood),"The surface temperature fro both the wood and aluminium blocks are ")