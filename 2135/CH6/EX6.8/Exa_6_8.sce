//Exa 6.8
clc;
clear;
close;
format('v',8);

//Given Data :
m=10;//Kg
p=10;//bar
x=0.9;
t1=20;//degree C
hf=762.6;//KJ/Kg
hfg=2013.6;//KJ/Kg
H=m*(hf+x*hfg);//KJ;
disp(H,"Enthalpy of wet steam in KJ : ");
hf1=83.9;//KJ/Kg(at 20 degree C)
Hf1=m*hf1;//KJ
HeatAdded=H-Hf1;//KJ
disp(HeatAdded,"Heat added in KJ : ");
//Steam table is used to get some data.
