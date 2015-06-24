clear;
clc;

//Example13.7[Radiation Heat Transfer between Parallel Plates]
//Given:-
T1=800,T2=500;//Temp of parallel plates[K]
e1=0.2,e2=0.7;//Emissivities
//Solution:-
q12=(5.67*10^(-8))*((T1^4)-(T2^4))/((1/e1)+(1/e2)-1);
disp("is transferred from plate 1 to plate 2 by radiation per unit surface area of either plate","W",round(q12),"The net heat at the rate of")