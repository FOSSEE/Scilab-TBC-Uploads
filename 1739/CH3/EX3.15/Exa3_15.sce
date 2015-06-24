//Exa 3.15
clc;
clear;
close;
//Given data :
format('v',6);
n1=1.49;//unitless
Rcs=10.4;//in mm
Rcs=Rcs*10^-3;//in meter
lambda=1.3;//in um
lambda=1.3*10^-6;//in meter
c=3*10^8;//speed of light in m/s
lambda_c=1.15;//in um
lambda_c=lambda_c*10^-6;//in meter
//part (a) :
//formula : (n1-n2)^(3/2)=(20*lambda/Rcs)*[(2.748*lambda_c-0.996*lambda)/lambda_c]^-3
n2=n1-(20*lambda/Rcs)^(2/3)*[(2.748*lambda_c-0.996*lambda)/lambda_c]^(-3*2/3);//unitless
disp(n2,"Refractive index of cladding : ");
//Part (b) :
delta=(n1-n2)/n1;//unitless
disp(delta*100,"Relative refractive index diference in % : ");