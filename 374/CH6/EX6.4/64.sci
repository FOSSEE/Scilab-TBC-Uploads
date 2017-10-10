//chapter 6 example 4//
clc
clear
//energy gap=Eg,cut off wavelength=lc,plancks constant=h,speed of light=c//
h=6.62*(10^-34);
c=3*(10^8);//in mts/sec//
Eg=1.43*1.6*(10^-19);
lc=((h*c)/Eg)*(10^6);
printf("\n cut off wavelength=%f micro meterc\n",lc)