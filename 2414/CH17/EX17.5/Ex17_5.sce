clc;
close();
clear();
//page no 554
//prob no. 17.5
theta_3dB=.3;    // minimum practical beamwidth in degree
eta_1=.6;     //illumination efficiency 
G=eta_1*48000/(theta_3dB)^2;    //gain calculation
mprintf('The Gain is G= %.0f \n',G)
G_dB=10*log10(G);   //dB gain
mprintf('The Gain in dB is G(dB)= %.1f dB \n',G_dB)
