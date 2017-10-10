//chapter 11 example 3//
clc
clear
//refractive index of core=n1,relative difference=n1-n2=d,Data rate=Br,modal dispersion limited transmission distance=Lmax,speed of light=c//
d=(0.01*1.45);
Br=50*(10^6);//bit rate//
n1=1.45;
c=3*(10^8);//in mts/sec//
Lmaxs1=(0.35*c)/(d*Br);//for step index fibre//
printf("\n material dispersion limited transmission distance for step index fibre=%f m\n",Lmaxs1)
Lmaxg1=(1.4*c*n1)/(d*Br);
printf("\n material dispersion limited transmission distance=%f m\n",Lmaxg1)