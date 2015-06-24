//Exa 6.12
clc;
clear;
close;
format('v',8);

//Given Data :
m=2;//Kg
p=8;//bar
x=0.8;
hf=720.9;//KJ/Kg(at p=8 bar)
hfg=2046.5;//KJ/Kg(at p=8 bar)
h=hf+x*hfg;//KJ/Kg
H=m*h;//KJ
disp(H,"Total enthalpy of steam in KJ : ");
Vg=0.227;//m^3/Kg
V=m*x*Vg;//m^3
disp(V,"Volume in m^3 : ");
We=p*10^5*V/1000;//KJ
disp(We,"External work of evaporation in KJ : ");
U=H-We;//KJ
disp(U,"Total internal energy in KJ : ");
Sf=2.061;//KJ/K
Sfg=4.578;//KJ/K
S=m*(Sf+x*Sfg);//KJ/K
disp(S,"Total entropy in KJ/K : ");
//Steam table is used to get some data.
