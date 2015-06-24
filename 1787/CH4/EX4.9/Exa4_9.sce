//Exa4.9
clc;
clear;
close;
//In given circuit :
V=5;//in volts
Vo=0.7;//in Volts
R=100;//in Kohm
disp("Since diode is silicon one, and the barrier potential for Si diode is 0.7 volt, Vo = 0.7 volts ");
disp("This barrier potential acts in opposite direction to the applied voltage. The diode forward resistance is being assumed to be zero.");
I=(V-Vo)/R;//in Ampere
disp(I*1000,"Current flowing through the circuit in Amperes :")