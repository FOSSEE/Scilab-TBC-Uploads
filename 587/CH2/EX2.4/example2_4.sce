clear;
clc;

//Example2.3[Heat Conduction in a Resistance Heater]
//Given:-
E_gen=2000;//Total rate of heat generation in the wire[W]
L=0.5;//Length of cyllindrical shaped wire[m]
D=0.004;//Diameter of wire[m]
k_heater=15;//Thermal conductivity of wire[W/m.K]
//Solution:-
//The resistance wire is considered to be a very long cylinder since its length is more than 100 times its diameter.Heat is generated uniformly in the wire and the conditions on the outer surface of the wire are uniform.Hence it is reasonable to expect the temperature int he wire to vary in radial r direction only and thus heat transfer to be one dimensional,T=T(r)
V_wire=%pi*(D^2)*L/4;//Volume of the wire[m^3]
e_gen=E_gen/V_wire;//[W/m^3]
disp("W/m^3",e_gen,"The rate of heat generation in the wire per unit volume is")
const=e_gen/k_heater;
disp("= 0",const,"The equation governing the variation of temperature int he wire is simply (1/r)d/dr(r.dT/dr)+")