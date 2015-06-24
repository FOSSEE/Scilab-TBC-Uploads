//Exa 5.1 
clc;
clear;
close;
//Given data :
format('v',6)
n=1.5;//refractive index
R=[(1-n)/(1+n)]^2;//unitless
disp(R*100,"Reflected light in % ");
disp(100-R*100,"The remainder transmitted light in % ");
loss=-10*log10(1-R);//in dB
disp(loss,"Transmission loss in dB : ");