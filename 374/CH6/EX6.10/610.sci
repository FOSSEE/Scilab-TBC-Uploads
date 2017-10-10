//chapter 6 example 10//
clc
clear
//plancks constant=h,speed of light=c,energy gay=Eg,critical wavelength=lc//
h=6.62*(10^-34);
c=3*(10^8);//in mts per sec//
Eg=1.15*1.6*(10^-19);
lc=((h*c)/Eg)*(10^9);
printf("\n critical wavelength=%f nm\n",lc)