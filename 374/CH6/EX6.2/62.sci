//chapter 6 example 2//
clc
clear
//quantum efficiency=n,number of hole pairs generated=re,number of incident photon=rp,responsivity=R,charge of the electron=e,speed of the light=c//
re=1.5*(10^11);
rp=3*(10^11);
n=re/rp;//quantum efficiency//
printf("\n quantum efficiency=%f m\n",n)
e=1.6*(10^-19);
l=0.85*(10^-6);//in mts//
c=3*(10^8);//in mts/sec//
h=6.62*(10^-34);
R=(n*e*l)/(h*c);
printf("\n responsivity of the photo diode=%f AW-1\n",R)
