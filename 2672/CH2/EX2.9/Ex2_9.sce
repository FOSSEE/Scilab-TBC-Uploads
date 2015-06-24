//Ex_2_9
clc;
clear;
close;
format('e',9);
//given data : 
l=20/100;//m
A=1.5/10000;//m^2
mur=2000;//relative permeability
mu0=4*%pi*10^-7;//permeability
S=l/(mu0*mur*A);//AT/Wb
disp(S,"Reluctance of silicon steel(AT/Wb)");
