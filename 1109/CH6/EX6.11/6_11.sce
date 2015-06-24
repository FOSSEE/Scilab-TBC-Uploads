clear;
clc;
ZR=100;Zo=600;f=100*(10^6);
lo=300/(f*(10^-6)); //lo=wavelength
Ls=(lo/(2*%pi))*(atan(sqrt(ZR/Zo)));
printf("-Point of attachment = %f cms\n",round(Ls*(10^2)*10)/10)
Lt=(lo/(2*%pi))*(%pi+(atan((sqrt(ZR*Zo))/(ZR-Zo))));
printf("-Length of the short circuited stub = %f cms",round(Lt*(10^2)));
