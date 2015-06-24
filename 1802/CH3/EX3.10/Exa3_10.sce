//Exa 3.10
clc;
clear;
close;
//Given Data :
format('v',4);
//Applying KCL we get I1+i1=I2+ix and I2+i2=I3+iy
//On solving we get : 1*2*E1=1*1*E2+0*1*E3 and 0*2*E1=-1*2*E2+1*3*E3 
E1byE=1/(1+(154/155)+(166/155));//assumed
E2byE=(154/155)*E1byE;//assumed
E3byE=(166/155)*E1byE;//assumed
Eff=1/((3*(166/155)*E1byE));
disp(Eff*100,"String Efficiency(in %) : ");