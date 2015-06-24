clc;
clear all;
pCu=8.96e3;//density of copper in kg*m^-3
pZn=7.14e3;//density of Zn in kg*m^-3
pAl=2.70e3;//density of Al in kg*m^-3
MCu=63.55;//atomic weight of Cu
MZn=65.38;//atomic weight of Zn
MAl=27.0;//atomic weight of Al
N=6.022*1e26;//avogadro's constant
x=1;//no of free electrons per atom
h=6.626e-34;
me=9.1e-31;

//for Cu
n=pCu*N*x/MCu;//concentration of electron in Cu
Efo=(h*h/(8*me))*((3*n/%pi)^(2/3));//fermi energy at 0K
Efo1=Efo/(1.6e-19);//convertion into eV from J
disp('eV',Efo1,'fermi energy at 0 K');

//for Zn
x=2;
n=pZn*N*x/MZn;//concentration of electron in Zn
Efo=(h*h/(8*me))*((3*n/%pi)^(2/3));//fermi energy at 0K
Efo1=Efo/(1.6e-19);//convertion into eV from J
disp('eV',Efo1,'fermi energy at 0 K');

//for Al
x=3;
n=pAl*N*x/MAl;//concentration of electron in Al
Efo=(h*h/(8*me))*((3*n/%pi)^(2/3));//fermi energy at 0K
Efo1=Efo/(1.6e-19);//convertion into eV from J
disp('eV',Efo1,'fermi energy at 0 K');
