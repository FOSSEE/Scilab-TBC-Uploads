//Exa 2.3
clc;
clear;
close;
//given data
G=120;//unitless
To=20;//in degree centigrade
T=50;//in degree centigrade
Dvoff=0.13;//in mV/degree centigrade
//input change
dVin=Dvoff*(T-To);//in mVolt
//output change
Vo=G*dVin;//in mVolt
disp(Vo,"Output voltage in mVolt is :")