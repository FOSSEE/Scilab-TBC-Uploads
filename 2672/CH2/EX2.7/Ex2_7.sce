//Ex_2_7
clc;
clear;
close;
format('v',7);
//given data : 
r=10;//cm
I=100;//A
d=5;//cm
mu0=4*%pi*10^-7;//permeability
Bc=mu0*I/2/(r/100);//Wb/m^2 or T
B=mu0*I*(r/100)^2/(2*((r/100)^2+(d/100)^2)^(3/2));//Wb/m^2
disp(Bc,"Flux density at the centre(Wb/m^2)");
disp(B,"Flux density in the plane(Wb/m^2)");
//Answer is wrong in the book.
