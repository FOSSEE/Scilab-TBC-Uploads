clear;
clc;
f=10^9;K=0.5*exp(%i*(30)/(180/%pi));
lo=300/(f*(10^-6)); //lo=wavelength
ampK=abs(K);
phi=atan(imag(K)/real(K));
Ls=(lo/(4*%pi))*(phi+%pi-acos(ampK));
printf("-Position of stub = %f cm\n",Ls*(10^2));
Lt=(lo/(2*%pi))*(atan(sqrt(1-(ampK*ampK)))/(2*ampK));
printf("-Length of the stub = %f cm",round(Lt*(10^2)*100)/100);
