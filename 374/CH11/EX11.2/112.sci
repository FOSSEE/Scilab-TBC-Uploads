//chapter 11 example 2//
clc
clear
//value of parameter=p,wavelength=l,spectral width=dl,speed of light=c,material dispersion limited transmission distance=Lmax,bit rate=Br//
c=3*(10^8);//in mts/sec//
l=850;//in nm//
dl=45;//in nm//
Br=10*(10^6);//in bits per sec//
p=0.023;
Tb=(1/Br);//bit time//
Lmax=(0.35*Tb*c*l)/(dl*p);
printf("\n material dispersion limited transmission distance=%f m\n",Lmax)