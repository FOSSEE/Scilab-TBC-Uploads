//Exa 3.2
clc;
clear;
close;
//given data
lambda=6000;//in Angstrum
h=6.6*10^(-34);//Planks constant
c=3*10^8;//speed of light in m/s
e=1.602*10^(-19);//Constant
phi=c*h/(e*lambda*10^(-10));
disp(phi,"Minimum required energy in eV is :");
//Note : Ans in the book is n ot correct