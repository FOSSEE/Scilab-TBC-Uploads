// Example 10.4.b;//Thermal noise
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
it=(((4*K*T*B*10^6)/(Rl*10^3)));//thermal noise
itr=sqrt(it);//rms thermal noise
disp(it,"total thermal noise is")
disp(itr,"RMS thermal noise current in ampere is")
