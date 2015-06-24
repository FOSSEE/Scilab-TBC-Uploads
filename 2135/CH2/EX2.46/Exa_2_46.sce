//Exa 2.46
clc;
clear;
close;
format('v',7);

//Given Data : 
t1=90;//degreeC
t2=30;//degreeC
modot=3;//Kg/s
//h=1.7*t+11*10^-4*t^2
h1=1.7*t1+11*10^-4*t1^2;//KJ/Kg
h2=1.7*t2+11*10^-4*t2^2;//KJ/Kg
tw1=27;//degreeC
tw2=67;//degreeC
Cp=4.2;//KJ/KgK
//h=Cp*tw;//KJ/Kg
hw1=Cp*tw1;//KJ/Kg
hw2=Cp*tw2;//KJ/Kg
//modot*(h1-h2)=mwdot*(hw2-hw1)
mwdot=modot*(h1-h2)/(hw2-hw1);//Kg/s
disp(mwdot,"Rate of flow of water in Kg/s : ");
