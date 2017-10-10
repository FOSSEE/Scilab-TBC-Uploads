//chapter 11 example 1//
clc
clear
//material dispersion delay=dtmax,value of parameter=p,length of link-L,spectral width=d,speed of light=c,wavelength=l//
L=1.25*(10^3);//in mts//
c=3*(10^8);//speed of light//
dl=45;//in nm//
p=0.023;
l=850;//in nm//
dtmax=(L*dl*p)/(c*l)*(10^9);
printf("\n material dispersion delay=%f ns\n",dtmax)