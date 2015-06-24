clear;
clc;

//Example4.6[Minimum Burial Depth of Water Pipes to avoid Freezing]
//Given:-
//Soil properties:-
k=0.4;//Thermal conductivity[W/m.degree Celcius]
a=0.15*(10^(-6));//Thermal diffusivity[m^2/s]
T_in=15;//Initial uniform temperature of ground[degree Celcius]
T_x=0;//Temperature after 3 months[degree Celcius]
Ts=-10;//Temperature of surface[degree Celcius]
//Solution:-
//The temperature of the soil surrounding the pipes wil be 0 degree Celcius after three months in the case of minimum burial depth, therefore we have
x=(h/k)*(sqrt(a*t));
//Since h tends to infinty
x=%inf;
y=(T_x-T_in)/(Ts-T_in);
//For values of x and y we have
neta=0.36;
t=90*24*60*60;//[seconds]
x=2*neta*sqrt(a*t);//[m]
disp("m",x,"Water pipes must be burried to a depth of at least ")
disp("so as to avoid freezing under the specified harsh winter conditions")
