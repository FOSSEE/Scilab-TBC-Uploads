
// Example 8.1 //compare shot noise and thermal current
clc;
clear;
close;
T=293;//Temperature in Kelvin
K=1.38*10^-23;//boltzman constt
C=3*10^8;//Speed of light in meter per second
e=1.6*10^-19;//elecronic charge
ht=6.62*10^-34;//plank constt.
Id=3;//dark current in nano ampere
n=0.60;//efficiency
Rl=4;//load resistance in kilo-ohms
h=0.9;//wavelength in micro meter
Po=200;// ouput power in nano Watt
B=5;// bandwidth in mega hertz
Ip= ((n*h*10^-6*Po*10^-9*e)/(ht*C))*10^9;//Photo current in Ampere
its=(2*e*B*10^6*(Id+Ip)*10^-9);//total shot noise
itsr=sqrt(its);//RMS shot noise
disp(itsr,"RMS shot noise current in Ampere is")
T=293;//Temperature in Kelvin
K=1.38*10^-23;//boltzman constt
C=3*10^8;//Speed of light in meter per second
e=1.6*10^-19;//elecronic charge
ht=6.62*10^-34;//plank constt.
Id=3;//dark current in nano ampere
n=0.60;//efficiency
Rl=4;//load resistance in killo ohms
h=0.9;//wavelength in micro meter
Po=200;// ouput power in nano wat
B=5;// bandwidth in mega hertz
it=(((4*K*T*B*10^6)/(Rl*10^3)));//thermal noise
itr=sqrt(it);//rms thermal noise
disp(itr,"RMS thermal noise current in Ampere is")


