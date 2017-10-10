//chapter 6 example 3//
clc
clear
//energy=E,plancks constant=h,speed of light=c,frequency=f,responsivity=R,incident optical power=Po//
h=6.62*(10^-34);
c=3*(10^8);//in mts/sec//
E=1.5*(10^-19);//in joules//
l=((h*c)/E)*(10^6);
printf("\n a) wavelength at which photodiode is operating=%f micro meter\n",l)
n=0.65;//efficiency//
e=1.6*(10^-19);
R=((n*e*l)/(h*c))*(10^-6);
Ip=3*(10^-6);
Po=(Ip/R)*(10^6);
printf("\n b) Responsivity=%fo micro watts \n",Po)