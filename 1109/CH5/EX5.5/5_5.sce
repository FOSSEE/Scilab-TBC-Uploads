clear;
clc;
R=40;C=0.06*(10^-6);L=0;G=0;r=15;l=80*(10^-3);d=1.2;f=(5/(2*%pi))*10^3;
Rc=R+(r/d);
Lc=L+(l/d)
w=2*%pi*f;
Z=Rc+(%i*w*Lc);
Y=G+(%i*w*C);
P=sqrt(Z*Y);
a=real(P);
printf("(a)Attenuation constant a = %f neper/km\n",round(a*1000)/1000);
Fc=1/(%pi*(sqrt(l*C*d)));
printf("(b)Cutoff frequency = %f kHz",round(Fc*(10^-3)*1000)/1000);

