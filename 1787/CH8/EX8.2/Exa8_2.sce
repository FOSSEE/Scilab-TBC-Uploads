//Exa 8.2
clc;
clear;
close;
//given data :
W=25;//in um
PhotonFlux=10^21;//in m^2s^-1
alfa=10^5;//in m^-1
e=1.6*10^-19;//in Coulambs
GL1=alfa*PhotonFlux;//in m^-3s^-1
GL2=alfa*PhotonFlux*exp(-alfa*W*10^-6);//in m^-3s^-1
JL=e*PhotonFlux*(1-exp(-alfa*W*10^-6));//in mA/cm^2
disp(JL/10,"Steady state photocurrent density in mA/cm^2 : ");