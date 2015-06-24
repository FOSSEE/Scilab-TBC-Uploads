//Exa 5.2
clc;
clear;
close;
//Given data :
format('v',5);
n1=3.6;//refractive index
n2=1.48;//refractive index
R=[(n1-n2)/(n1+n2)]^2;//unitless
loss=-10*log10(1-R);//in dB
disp(loss,"Transmission loss in dB : ");