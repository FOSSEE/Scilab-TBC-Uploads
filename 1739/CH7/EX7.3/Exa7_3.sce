//Exa 7.3
clc;
clear;
close;
//Given data :
lambda=0.55;//in um
lambda=lambda*10^-6;//in meter
c=3*10^8;//speed of light in m/s
n=1.78;//Refractive index(unitless)
K=260000;//No. of longitudinal modes
//Part (a) :
L=K*lambda/(2*n);//in meter
disp(L,"Length of the crystal in  meter : ");
//Part (b) :
deltaNEU=c/(2*n*L);//in Hz
disp(deltaNEU*10^-9,"Frequency separation of longitudinal modes in GHz : ");