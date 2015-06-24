clear;
clc;
s=3.3;Zo=300;l=15;
ampK=round(((s-1)/(s+1))*100)/100;
Zr=Zo*(1+ampK)/(1-ampK);
printf("-Terminated impedance = %f ohms\n",fix(Zr));
lo=(2*2*%pi*l*(10^-2))/%pi; //lo=wavelength
f=300/lo;
printf("-Frequency = %f MHz",f);
