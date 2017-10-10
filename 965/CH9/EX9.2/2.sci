clc;
clear all;
disp("the heat flux")
d=1.25/1000;// m diameter of wire
L=0.25;//m length of wire
V=18;// V
I=45;// amp
Q=V*I;// W
A=%pi*d*L;//m^2
q=Q/A;// W/m^2
disp("W/m^2",q,"the heat flux =")
delTe=((1.58*q^0.75)/5.62)^(1/3);// degree C
disp("degree C",delTe,"The excess temperature")
