clear;
clc;
f=200*(10^6);s=4.48;ymin=6;Zo=300; //s=standing wave ratio
lo=300/(f*(10^-6)); //where f is in megahertz ,lo=wavelength of wave in air
b=2*%pi/lo;
phi=(2*b*ymin*(10^-2))-%pi;
ampK=(s-1)/(s+1); //ampK=amplitude of the reflection coefficient
K=ampK*(exp(%i*phi));
A=real(K);
B=imag(K);
printf("-Complex reflection coefficient= %f /_ %f\n",round(abs(K)*1000)/1000,round(atan(B,A)*180/%pi));
ZR=(Zo*(1+K))/(1-K);
C=real(ZR);
D=imag(ZR);
printf("-Terminating impedance of line = %f /_ %f ohms",abs(ZR),round(atan(D,C)*180*10/%pi)/10);
