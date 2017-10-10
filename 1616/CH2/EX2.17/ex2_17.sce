//ex2.17 find the impedence at a distance of 0.2lamda from the junction and VSWR

bl1=0.6*%pi;
bl2=0.4*%pi;
Z0=50;
ZL=75;
Z2=Z0*(ZL*cos(bl1)+%i*Z0*sin(bl1))/(Z0*cos(bl1)+%i*ZL*sin(bl1));
Z1=50;
Z=Z1*Z2/(Z1+Z2);
Zl2=Z0*(Z*cos(bl2)+%i*50*sin(bl2))/(50*cos(bl2)+%i*Z*sin(bl2));
T=abs((Z-Z0)/(Z+Z0));
VSWR=(1+T)/(1-T);
disp('VSWR on the line is = '+string(VSWR)+'','the impedence at a distance of 0.2lamda from the junction is = '+string(Zl2)+' ohm');