clear;
clc;

//Example13.11[Radiation Shields]
//given:-
e=0.1;//Emissivity of aluminium sheet
T1=800,T2=500;//Temperatures of two parallel plates[K]
e1=0.2,e2=0.7;//Emissivities of plates
//So9lution:-
q12=((5.67*10^(-8))*((T1^4)-(T2^4)))/((1/e1)+(1/e2)-1+(1/e)+(1/e)-1);//[W/m^2]
disp("W/m^2",round(q12),"Radiation Heat Transfer")
