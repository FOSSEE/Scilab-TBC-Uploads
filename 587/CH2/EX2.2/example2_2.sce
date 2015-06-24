clear;
clc;

//Example2.2[Heat Generation in a Hair Dryer]
//Given:-
E_gen=1200;//[Total rate of heat generation]
L=80;//Length of wire[cm]
D=0.3;//Diameter of wire[cm]
//Solution:-
V_wire=%pi*(D^2)*L/4;//Volume of the wire[cm^3]
e_gen=E_gen/V_wire;//[W/cm^3]
As=%pi*D*L;//Suface Area of wire[m^2]
Q_=E_gen/As;//[W/cm^2]
disp("W/cm^2",Q_,"and","W/cm^3",round(e_gen),"The rate of heat generation in the wire per unit volume and heat flux on the outer surface of the wire as a result of this heat generation are respectively")