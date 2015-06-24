//Exa 1.19
clc;
clear;
close;
//given data :
P=10;//in W/m^2
f=40;//in MHz
f=f*10^6;//in Hz
mu_r=4;//constant
epsilon_r=5;//constant
//Velocity of propagation
//formula : v=(1/sqrt(mu_o*epsilon_o))*(1/sqrt(mu_r*epsilon_r));//in m/s
//1/sqrt(mu_o*epsilon_o)=c=speed of light=3*10^8 m/s
c=3*10^8;//speed of light in m/s
v=c*(1/sqrt(mu_r*epsilon_r));//in m/s
disp(v,"Velocity of propagation in m/s : ");
//Wavelength
lambda=v/f;//in meter
disp(lambda,"Wavelength in Meter : ");
//rms electric field
//Formula : E=P*sqrt(mu_o/epsilon_o)*sqrt(mu_r/epsilon_r);//in V/m
E=sqrt(1200*%pi*sqrt(4/5));//in V/m
Erms=sqrt(E^2/sqrt(2));//in V/m
disp(Erms,"rms Electric Field in V/m: ");
//Impedence of medium
Eta=(sqrt(2)*Erms)^2/P;//in Ohm
disp(Eta,"Impedence of medium in ohm : ");