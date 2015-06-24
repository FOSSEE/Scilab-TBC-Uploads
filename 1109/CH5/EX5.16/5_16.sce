clear;
clc;
R=45;L=1.2*(10^-3);G=5*(10^-6);C=0.065*(10^-6);w=20000;l=22*(10^-3);s=1.1;
pf=0.005//pf=power factor //value of pf as taken in solution
r=pf*w*L;
Rc=R+(r/s);
Lc=L+(l/s);
P=sqrt((Rc+(%i*w*Lc))*(G+(%i*w*C)));
theta=round(atan(imag(P),real(P))*180/%pi);
a=abs(P)*cos(theta*%pi/180);
printf("Attenuation constant of line = %f neper/km",fix(a*10^4)/10^4);
