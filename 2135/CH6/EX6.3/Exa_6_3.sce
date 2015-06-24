//Exa 6.3
clc;
clear;
close;
format('v',8);

//Given Data :
m=1;//Kg
p=12;//bar
x=0.95;
ts=187.96;//degree C
vg=0.1632;//m^3/Kg
hf=814.7;//KJ/Kg
hfg=1970.7;//KJ/Kg
disp(ts,"Temperature of steam in degree C : ");
v=x*vg;//m^3/Kg
disp(v,"Specific volume in m^3/Kg ; ");
h=hf+x*hfg;//KJ/Kg
disp(h,"Enthalpy of steam in KJ/Kg : ");
u=h-p*10^5*v/1000;//KJ/Kg
disp(u,"Internal energy in KJ/Kg : ");
//Steam table is used to get some data.
