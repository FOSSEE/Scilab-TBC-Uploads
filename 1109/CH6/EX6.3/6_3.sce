clear;
clc;
Zo=50;f=300*(10^6);ZR=50+(%i*50);
lo=300/(f*(10^-6)); //where f is in megahertz ,lo=wavelength of wave in air
K=(ZR-Zo)/(ZR+Zo);
ampK=sqrt((real(K)^2)+(imag(K)^2));
S=(1+ampK)/(1-ampK);
printf("-VSWR = %f\n",round(S*100)/100);
phi=atan(imag(K)/real(K));
ymax=phi*lo/(2*2*%pi);
ymin=ymax+(lo/4);
printf("-Position of voltage minimum nearest load = %f metres",round(ymin*10000)/10000);
