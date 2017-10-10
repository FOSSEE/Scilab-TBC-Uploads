//chapter 6 example 1//
clc
clear
//energy=E,efficiency=n,wavelength=l,plancks constant=h,speed of light=c,incident power required=R,incident power required=Po//
h=6.62*(10^-34);
c=3*(10^8);//in mts/sec//
E=2.2*(10^-19);//in joules//
l=((h*c)/E)*(10^6);//operating wavelength//
printf("\n a) operating wavelength required=%f micro meter\n",l)
f=c/l;
n=0.7;//efficiency//
e=1.6*(10^-19);//charge of electron//
R=((n*e)/(h*f))*(10^-6);
Ip=2.0*(10^-6);
Po=(Ip/R)*(10^6);
printf("\n b) incident power required=%f m\n",Po)