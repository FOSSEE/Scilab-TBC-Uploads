//Exa 6.9
clc;
clear;
close;
format('v',8);

//Given Data :
t=50;//degree C
p1=13;//bar
Cpw=4.187;//KJ/KgK
Cp=0.0535;//KJ/KgK
x1=0.97;
hf=Cpw*(t-0);//KJ/Kg
hf1=814.7;//KJ/Kg(at p1=13 bar)
hfg1=1970.7;//KJ/Kg(at p1=13 bar)
hg1=2785.4;//KJ/Kg(at p1=13 bar)
Q=hf1+x1*hfg1-hf;//KJ/Kg
disp(Q,"Heat required to produce steam in KJ/Kg : ");
Q1=hg1-hf;//KJ/Kg
disp(Q1,"Heat required to produce dry saturated steam in KJ/Kg : ");
tsup1SUBts1=40;//degree C
Q2=hg1+Cp*(tsup1SUBts1)-hf;//KJ/Kg
disp(Q2,"Heat required to produce super heated steam in KJ/Kg : ");
//Steam table is used to get some data.
//Ans is wrong in the book for last part.
