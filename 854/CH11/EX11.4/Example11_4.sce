//clear//
//Caption:Program to find the output power and attenuation coefficient
//Example11.4
//page349
clear;
clc;
close;
z = 20; //distance in meters
Pz_P0_dB = -2; //fraction of power drop in dB
Pz_P0 = 10^(Pz_P0_dB/10);
disp(Pz_P0,'Fraction of input power reaches output P(z)/P(0)=')
P0_mid_dB = -1; //fraction of power drop at midpoint in dB
P0_mid = 10^(P0_mid_dB/10);
disp(P0_mid,'Fraction of the input power reaches the midpoint P(10)/P(0)=')
alpha = -Pz_P0_dB/(8.69*z);
disp(alpha,'attenuation in Np/m alpha=')
//Result
//Fraction of input power reaches output P(z)/P(0)=   
//     0.6309573  
//Fraction of the input power reaches the midpoint P(10)/P(0)=   
//    0.7943282  
//attenuation in Np/m alpha=   
//    0.0115075
