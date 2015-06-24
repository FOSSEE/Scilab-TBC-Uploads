//Exa 5.2
clc;
clear;
close;
//Given Data :
format('v',7);
R=2;//in ohm
X=6;//in ohm
P=10000*10^3;//in watts
cos_fir=0.8;//unitless
VR=22*10^3;//in volt
I=P/(sqrt(3)*VR*cos_fir);//in Ampere
VR_phase=VR/sqrt(3);//in volt
Vs=sqrt((VR_phase*cos_fir+I*R)^2+(VR_phase*sqrt(1-cos_fir^2)+I*X)^2);
disp(Vs,"Sending end voltage Vs(phase) :");
disp(((Vs-VR_phase)/VR_phase)*100,"% Regulation : ");