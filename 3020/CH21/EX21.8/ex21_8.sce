clc;
clear all;
e0=8.854e-12; //permittivity of vacume
N=5e28; //no of atoms present per m^3 N
xe=2e-40; //polarisability
//P=N*xe*Ei and Ei=E+(P/(3*e0)) so..
//Ei=E+(N*xe*Ei/(3*e0)) so...
//Ei/E=1/(1-(N*xe/(3*e0))) so..lets take rt=Ei/E
m=(N*xe)/(3*e0)
rt=1/(1-m);//ratio of internal field to applied field
disp('',rt,'ratio of internal field to applied field is:')
