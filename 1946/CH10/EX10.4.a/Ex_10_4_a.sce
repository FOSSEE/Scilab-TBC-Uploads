// Example 10.4.a;//TOTAL SHOT NOISE
clc;
clear;
close;
T=293;//TEMPRATURE IN KELVIN
K=1.38*10^-23;//boltzman constt
C=3*10^8;//SPEED of light in meter per second
e=1.6*10^-19;//elecronic charge
ht=6.62*10^-34;//plank constt.
Id=3;//dark current in nano ampere
n=0.60;//efficiency
Rl=4;//load resistance in killo ohms
h=0.9;//wavelength in micro meter
Po=200;// ouput power in nano wat
B=5;// bandwidth in mega hertz
Ip= ((n*h*10^-6*Po*10^-9*e)/(ht*C))*10^9;//PHOTO CURRENT IN AMPERE
its=(2*e*B*10^6*(Id+Ip)*10^-9);//total shot noise
itsr=sqrt(its);//RMS shot noise
disp(its,"total shot noise is")
disp(itsr,"RMS shot noise current in ampere is")
