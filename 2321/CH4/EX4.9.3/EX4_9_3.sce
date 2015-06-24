//Example No. 4.9.3
clc;
clear;
close;
format('v',5);
le=10;//m(effective length)
Irms=450;//A(rms current)
Rl=1.5;//Ω(resistance)
f=50;//kHz(Operating frequency)
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^3);//m(Wavelength)
P=160*%pi^2*(le/lambda)^2*Irms^2;//kW(Power)
P=P*1000;//W(Power)
Rr=160*%pi^2*(le/lambda)^2;//Ω(Radiation resistance)
Eta=Rr/(Rr+Rl)*100;//%(Efficiency)
disp(Eta,"Efficiency of antenna in % : ");
