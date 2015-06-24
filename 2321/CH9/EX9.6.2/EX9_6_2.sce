//Example No. 9.6.2
clc;
clear;
close;
format('v',7);
aEBYlambda=10;//(Aperture/wavelength)
del_EBYlambda=0.2;//in E-plane
del_HBYlambda=0.375;//in H-plane
LBYlambda=aEBYlambda^2/8/del_EBYlambda;//(Length/wavelength)
disp("Length of the horn is "+string(LBYlambda)+"*lambda");
aHBYlambda=sqrt(LBYlambda*8*del_HBYlambda);//(Aperture/wavelength)
disp("H-plane aperture, aH is "+string(aHBYlambda)+"*lambda");
theta_E=2*atand(aEBYlambda/2/LBYlambda);//degree(Angle)
theta_H=2*atand(aHBYlambda/2/LBYlambda);//degree(Angle)
disp(theta_H,theta_E,"Flare angles theta_E & theta_H(in degree) are : ");
HPBW_E=56/aEBYlambda;//degree(HPBW for E-plane)
disp(HPBW_E,"HPBW(E-plane) in degree : ");
HPBW_H=67/aHBYlambda;//degree(HPBW for H-plane)
disp(HPBW_H,"HPBW(H-plane) in degree : ");
FNBW_E=102/aEBYlambda;//degree(FNBW for E-plane)
disp(FNBW_E,"FNBW(E-plane) in degree : ");
FNBW_H=172/aHBYlambda;//degree(FNBW for F-plane)
disp(FNBW_H,"FNBW(H-plane) in degree : ");
D=10*log10(7.5*aEBYlambda*aHBYlambda);//(Directivity)
disp(D,"Directivity in dB  : ");
