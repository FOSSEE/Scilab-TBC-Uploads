//Bilinear transformation
//To convert twin-T notch analog filter to digital filter
s=%s;
z=%z;
HS=(s^2+1)/(s^2+4*s+1);
Wo=1;
S=240;f=60;//sampling and analog frequencies
W=0.5*%pi;//digital frequency
C=Wo/tan(0.5*W)
HZ=horner(HS,C*(z-1)/(z+1))
f=0:120;
HZ1=abs(horner(HZ,exp(-%i*%pi*f'/120)));
HS1=abs(horner(HS,(%i*f'/60)));
a=gca();
a.x_location="origin";
plot2d(f,HZ1);
plot2d(f,HS1);
xlabel('Analog Frequency f[kHZ]');
ylabel('Magnitude');
xtitle('Notch filter H(S) and digital filter H(z)');
