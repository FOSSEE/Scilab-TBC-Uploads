//chapter 9 example 3//
clc
clear
//fibre bandwidth length product=Bopt,3dB pulse dispersion for the fibre in ns km-1=T,time at which output pulses are found=To,time at which input optical pulses are found=Ti//
To=12.7;//in nano seconds//
Ti=0.4;//in nano seconds//
T=(sqrt((To^2)-(Ti^2)))/1.2;//time at which 3dB pulse boardaning is obtained//
printf("\n a) time at which 3dB pulse boardaning is obtained=%f ns/km\n",T)
Bopt=(0.44/T)*1000;//optical bandwidth of the fibre//
printf("\n b) fibre bandwidth length product=%f MHz Km\n",Bopt)