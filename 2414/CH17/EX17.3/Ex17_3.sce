clc;
close();
clear();
//page no 552
//prob no. 17.3
c=3*10^8;   //speed of light in m/s
f=3.7*10^9;   //Hz
lembda=c/f;   //m
mprintf('The wave length is %.4f cm \n',lembda*100)
theta_3dB=8;    //degree
D=70*lembda/theta_3dB     //m
mprintf('The diameter is, D= %.4f m \n',D);
eta_1=.6;     //illumination efficiency 
G=eta_1*(%pi*D/lembda)^2;    //gain calculation
mprintf('The Gain is G= %.2f \n',G)
G_dB=10*log10(G);   //dB gain
mprintf('The Gain in dB is G(dB)= %.3f dB \n',G_dB)
