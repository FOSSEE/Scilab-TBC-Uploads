clc;
clear;
dia=0.03;//m
dia1=0.01;//m
p=3;//kPa(gage)
//density of air d is found using standard temp and pressure conditions
d=(p+101)*1000/((286.9)*(15+273));
//applying Bernoulli's equation at points 1,2 and 3; p=p1
v3=((2*p*1000)/d)^0.5;
Q=%pi/4*(dia1^2)*v3;
//by continuity equation, A2*v2=A3*v3
v2=((dia1/dia)^2)*v3;
p2=(p*1000)-(0.5*d*(v2^2));
disp("m^3/s",Q,"Flowrate =")
disp("N/m^2",p2,"Pressure in the hose=")