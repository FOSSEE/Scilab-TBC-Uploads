//Exa 6.2
clc;
clear;
close;
format('v',8);

//Given Data :
p=5;//bar
x=0.98;
ts=151.84;//degree C
hf=652.8;//KJ/Kg
hfg=2098;//KJ/Kg
vg=0.373;//m^3/Kg
disp(ts,"Temperature of steam in degree C : ");
h=hf+x*hfg;//KJ/Kg
disp(h,"Enthalpy of steam in KJ/Kg : ");
v=x*vg;//m^3/Kg
disp(v,"Specific volume in m^3/Kg ; ");
//Steam table is used to get some data.
