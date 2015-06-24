//Exa 5.4
clc;
clear;
close;
//Given Data :
format('v',7);
l=15*10^3;//in meter
Pt=10000;//in KW
cos_fir=0.8;//unitless
VL=33*10^3;//in volt
R=0.2*15;//in ohm/phase/15km
X=0.4*15;//in ohm/phase/15km
I=Pt*10^3/(sqrt(3)*VL*cos_fir);//in Ampere
VR_phase=VL/sqrt(3);//in volt
Vs=sqrt((VR_phase*cos_fir+I*R)^2+(VR_phase*sqrt(1-cos_fir^2)-I*X)^2);
disp(Vs*sqrt(3)/1000,"Sending end voltage Vs(line) in KV :");
cos_fis=(VR_phase*cos_fir+I*R)/Vs;//unitless
disp(cos_fis,"Sending end PF(leading) :");
disp(((Vs-VR_phase)/VR_phase)*100,"% Regulation : ");