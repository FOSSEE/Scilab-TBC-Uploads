//Exa 5.3
clc;
clear;
close;
//Given Data :
format('v',7);
l=10*10^3;//in meter
P_del=4000;//in KVA
cos_fir=0.9;//unitless
VL=11*10^3;//in volt
R=0.2*10;//in ohm/phase/10km
X=0.3*10;//in ohm/phase/10km
I=P_del*10^3/(sqrt(3)*VL);//in Ampere
VR_phase=VL/sqrt(3);//in volt
Vs=sqrt((VR_phase*cos_fir+I*R)^2+(VR_phase*sqrt(1-cos_fir^2)+I*X)^2);
disp(Vs*sqrt(3)/1000,"Sending end voltage Vs(line in KV) :");
disp(((Vs-VR_phase)/VR_phase)*100,"% Regulation : ");
Losses3line=3*I^2*R;//in watt
P_rec=P_del*cos_fir;//in KW
Pin=P_rec+Losses3line/1000;//in KW
ETA=P_rec/Pin;//unitless
disp(ETA*100,"Transmission Efficiency(in %) :")
cos_fis=(VR_phase*cos_fir+I*R)/Vs;//unitless
disp(cos_fis,"Sending end PF(lag) :");