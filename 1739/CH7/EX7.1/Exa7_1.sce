//Exa 7.1
clc;
clear;
close;
//Given data :
format('v',10);
lambda=1.5;//in um
T=900;//in kelvin
h=6.63*10^-34;//Planks contant
c=3*10^8;//speed of light in m/s
K=1.38*10^-23;//Boltzman Constant
//Formula : StiEmissionRate/SponEmissionRate=1/(exp(h*F/(K*T))-1)=1/(exp(h*c/(K*T*lambda))-1)
StiEmRateBySponEmRate=1/(exp(h*c/(K*T*lambda*10^-6))-1);
disp(StiEmRateBySponEmRate,"Stimulated Emission Rate/Spontanious Emission Rate is : ");