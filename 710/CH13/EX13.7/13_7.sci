clc();
clear;
//To calculate the mean optical power launched into a fibre
S=2;                    //signal attenuation per km
l=1;                    //length in km.Since l=1 S=2
//S=10*log(pi/p0)(or)pi/p0=10^(S/10)
p0=20;                  //mean optical power at fibre output 
pi=p0*10^(S/10)         //mean optical power launched into fibre
printf("The mean optical power launched into a fibre of length of 1km is %f micri W",pi);