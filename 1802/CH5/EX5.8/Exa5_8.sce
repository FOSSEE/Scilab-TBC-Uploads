//Exa 5.8
clc;
clear;
close;
//Given Data :
format('v',7);
d=1*100;//in cm
dia=1;//in cm
r=dia/2;//in cm
Length=20;//in km
V=33;//in KV
P=10;//in MW
cosfi=0.8;//unitless
f=50;//in Hz
R=0.19;//in ohm/km/phase
//Part (i) :
L=2*10^-7*log(d/r);//in H/m
L20=L*Length*10^3;//in H
XL=2*%pi*f*L20;//in ohm
R20=R*Length;//in ohm
Z=sqrt(R20^2+XL^2);//in ohm
IR=P*10^3/(sqrt(3)*V*cosfi)
Losses=3*IR^2*R20;//in watt
ETA=P/(P+Losses/10^6);//unitless
disp(ETA*100,"Efficiency of line(in %) :");
//Part (ii) :
VR=V*1000/sqrt(3);//in volt
Vs=((VR*cosfi+IR*R20)+(VR*sqrt(1-cosfi^2)+IR*XL));
disp(((Vs-VR)/VR)*100,"% Regulation : ");
//Note : Answer in the book is wrong. In second last line of the solution in the book 16079+12885 is taken as 20605 instead of 28964.    