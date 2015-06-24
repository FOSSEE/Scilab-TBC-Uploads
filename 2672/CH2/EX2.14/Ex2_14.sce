//Ex_2_14
clc;
clear;
close;
format('v',10);
//given data : 
N1=100;//turns
N2=80;//turns
I1=10;//A
I2=1.5;//A
li=40/100;//m
lg=1/1000;//m(airgap)
A=10/10000;//m^2
mur=2000;//relative permeability
mu0=4*%pi*10^-7;//permeability
mmf=N1*I1-N2*I2;//AT
S=1/(mu0*A)*[li/mur+lg];//AT/Wb
fi=mmf/S;//Wb
disp(fi,"Flux produced(Wb)");
