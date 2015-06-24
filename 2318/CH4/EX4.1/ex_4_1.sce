//Example 4.1: Unknown resistor
clc;
clear;
close;
//given data :
Vd=0.83942;// volt-drop in V
emf=23*10^-6;// in V
Vds=1.01575;// volt-drop in V
Rs=0.10014;// in ohm
Vdt=Vd-emf;// in V
I=Vds/Rs;
R=Vdt/I;
disp(R,"Unknown resistor,R(ohm) = ")
