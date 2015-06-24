//Bilinear transformation
//To convert bessel analog filter to digital filter
s=%s;
z=%z;
HS=3/(s^2+3*s+3);
Wa=4;//analog omega
Wd=%pi/2;//digital omega
T=(2/Wa)*(tan(Wd/2));
HZ=horner(HS,(2/T)*(z-1)/(z+1))
f=0:0.1:6;
HS1=horner(HS,(%i*4*f'/3));
HS1=abs(HS1);
HZ1=horner(HZ,exp(-%i*%pi*f'/6));
HZ1=abs(HZ1);
a=gca();
a.x_location="origin";
plot2d(f,HS1);
plot2d(f,HZ1);
xlabel('Analog Frequency f[kHZ)');
ylabel('Magnitude');
xtitle('Bessel filter H(s) and digital filter H(z)');