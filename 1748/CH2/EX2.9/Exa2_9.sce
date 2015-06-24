//Exa 2.9
clc;
clear;
close;
//Given data : 
E2=100;//in volt
R2=0.4;//in ohm
X2=2.25;//im ohm
E2perphase=E2/sqrt(3);//in volt
S=4;//in %
E=(S/100)*E2perphase;//rotor induced emf at a slip=4% in volt
Z2=sqrt(R2^2+((S/100)*X2)^2);
I2=E/Z2;//in Ampere
disp(I2,"Rotor currentt in Ampere : ");