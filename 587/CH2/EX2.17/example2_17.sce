clear;
clc;

//Example2.17[Centerline Temperature of a Resistance Heater]
//Given:-
k=15;//Thermal conductivity of heater wire[W/m.K]
E_gen=2000;//Total heat generation[W]
l=0.5;//Length of resistance heater wire[m]
D=0.004;//Diameter of wire[m]
Ts=105;//Outer sorface Temperarure[degree Celcius]
//Solution:-
V_wire=%pi*(D^2)*l/4;//Volume of wire[m^3]
e_gen=E_gen/V_wire;//[W/m^3]
disp("W/m^3",e_gen,"The heat generation per unit volume of the wire is")
Tc=Ts+(e_gen*(D^2)/(4*4*k));//[degree Celcius]
disp("degree Celcius",round(Tc),"The center temperature of the wire is ")
