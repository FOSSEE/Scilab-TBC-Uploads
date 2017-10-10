//chapter 11 example 5//
clc
clear
//value of parameter=p,length of link=L,speed of light=c,wavelength=l,spectral width=dl,rise time=dtr//
c=3*(10^8);//in mts per sec//
l=830;//in nm//
dl=40;//in nm//
L=2.5*(10^3);//in mts//
p=0.024;//value of parameter//
dtmat=(-L*dl*p)/(c*l)*(10^9);
dtmodal=(2.5*3.5);
dtr=10;//in ns//
dts=8;//in ns//
g=sqrt((dts^2)+(dtr^2)+(dtmat^2)+(dtmodal^2));
dtsys=1.1*g;
printf("\n material dispersion delay time=%f m\n",dtsys)
Btmax=(0.75/dtsys)*(10^9);
printf("\n a)Btmax for RZ format=%f m\n",Btmax)
Btmax1=(0.35/dtsys)*(10^9);
printf("\n b)Btmax for NRZ format=%f m\n",Btmax1)