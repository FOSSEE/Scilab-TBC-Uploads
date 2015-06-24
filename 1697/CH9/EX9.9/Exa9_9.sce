//Exa 9.9
clc;
clear;
close;
//given data :
PT=5;//in KW
PT=PT*1000;//in W
D=100;//in Km
D=D*10^3;//in m
f=300;//in MHz
GT=1.64;//Directivity of transmitter
GR=1.64;//Directivity of receiver
c=3*10^8;//speed of light in m/s
lambda=c/(f*10^6);//in meter
Pr=PT*GT*GR*[lambda/(4*%pi*D)]^2
disp(Pr,"Maximum power received in Watt:");