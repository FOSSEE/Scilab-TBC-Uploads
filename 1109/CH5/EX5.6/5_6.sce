clear;
clc;
R=25;C=0.04*(10^-6);L=0.6*(10^-3);G=0;l=45*(10^-3);r=20;d=1;f=1000;
Rc=R+(r/d);
Lc=L+(l/d)
w=2*%pi*f;
Z=Rc+(%i*w*Lc);
Y=G+(%i*w*C);
P=sqrt(Z*Y);
a=real(P);
printf("-Attenuation per km line = %f neper/km\n",round(a*10^5)/10^5);
Fc=1/(%pi*(sqrt(Lc*C*d)));
printf("-Highest frequency of transmission will be cutoff frequency = %f kHz",round(Fc*(10^-3)*10^3)/10^3);
