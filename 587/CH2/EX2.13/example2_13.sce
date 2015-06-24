clear;
clc;

//Example2.13[Heat Conduction in the Base Plate of an Iron]
//Given:-
k=15;//[W/m.degree Celcius]
A=300*10^(-4);//Base Area[m^2]
L=0.005;//Thickness[m]
T_surr=20;//Temp of surrounding[degree Celcius]
h=80;//Convection het transfer coefficient[W/m^2.degree Celcius]
Q=1200;//[W]
//Solution:-
q=Q/A;//[W/m^2]
disp("W/m^2",q,"Uniform Heat Flux to whicj inner surface of the base plate is subjected")
//Integration Constants
C1=-q/k;
C2=T_surr+(q/h)+(q*L/k);
T_0=T_surr+q*((L/k)+(1/h));//[degree Celcius]
T_L=T_surr+q*(1/h);//[degree Celcius]
disp("respectively","degree Celcius",T_L,"and","degree Celcius",round(T_0),"The temperatures at the inner and outer surfaces of the plate i.e. at x=0 and x=L are")