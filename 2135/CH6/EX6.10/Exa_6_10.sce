//Exa 6.10
clc;
clear;
close;
format('v',7);

//Given Data :
p=8;//bar
x=0.8;
vf=0.001115;//m^3/kg
vg=0.24;//m^3/kg
hf=720.9;//kJ/kg(at p=8 bar)
hfg=2046.5;//kJ/kg(at p=8 bar)
m=1;//kg
We=100*p*(x*vg-vf);//kJ/kg
disp(We,"External workdone during evaporation in kJ/kg : ");
Q=x*hfg-We;//KJ
disp(Q,"External latent heat of steam in kJ: ")

//Steam table is used to get some data.
//Ans is wrong in the book for last part.
