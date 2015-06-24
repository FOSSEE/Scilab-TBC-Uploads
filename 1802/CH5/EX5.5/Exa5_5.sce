//Exa 5.5
clc;
clear;
close;
//Given Data :
format('v',9);
Vs_line=33*10^3;//in volt
cos_fir=0.8;//unitless
P_KVA=6000;//in KVA
P_KW=P_KVA*cos_fir;//in KW
cos_fir=0.8;//unitless
impedence=2+%i*6;//in ohm
R=real(impedence);//in ohm
X=imag(impedence);//in ohm
Vs_phase=Vs_line/sqrt(3);//in volt
disp("Sending end Voltage, Vs(in Volt) = VR+I*R*cos_fir+I*X*sin_fir ");
disp("It gives polynomial p = [1 -Vs_phase P_KVA*10^3*R*cos_fir/sqrt(3)+P_KVA*10^3*X*sin_fir/sqrt(3)].")
sin_fir=sqrt(1-cos_fir^2);
p=[1 -Vs_phase P_KVA*10^3*R*cos_fir/sqrt(3)+P_KVA*10^3*X*sin_fir/sqrt(3)]; 
VR=roots(p);
VR=VR(1);//(root calculated using -ve sign is discarded in shreedharacharya method)
VR_line=VR*sqrt(3);//in volt
disp(VR_line/1000,"Line voltage at receiving end(in KV) :");
Regulation=((Vs_line-VR_line)/VR_line)*100;//unitless
disp(Regulation,"% Regulation : ");
I=P_KVA*10^3/(sqrt(3)*VR_line)
//I=P*10^3/(sqrt(3)*VR_line);//in Ampere
TotalLoss=3*I^2*R;//in watt
Pout=P_KVA*cos_fir;//in KW
Pin=Pout+TotalLoss/1000;//in KW
ETA=Pout/Pin;//unitless
disp(ETA*100,"Transmission Efficiency(in %) :");
