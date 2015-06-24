//Example 18.1 //Fermi Energy 
clc;
clear;
//given data :
P=.971D3;// density in Kg/m3
N=6D26;// Avogadro number in atoms/Kg-mole
W=22.99;//atomic weigh of sodium
a=N*P/W;// electron density
m=9.1D-31;// mass of electron in kg
h=6.626D-34;// plank's constant in joules-sec
E=((h^2)/(2*m))*(3*a/%pi)^(2/3);// fermi energy in J
disp(E,"Fermi energy in J")
//in book formula taken wrongly
