// Example 10.1;//QUANTUM NOISE , DARK CURRENT & THERMAL NOISE
clc;
clear;
close;
T=300;//TEMPRATURE IN KELVIN
K=1.38*10^-23;//boltzman constt
C=3*10^8;//SPEED of light in meter per second
e=1.6*10^-19;//elecronic charge
ht=6.62*10^-34;//plank constt.
Id=4;//dark current in nano ampere
n=0.90;//efficiency
Rl=1000;//load resistance in ohms
h=1100;//wavelength in nano meter
Po=300;// ouput power in nano watt
B=20;// bandwidth in mega hertz
Ip= (n*h*10^-9*Po*10^-9*e)/(ht*C);//PHOTO CURRENT IN AMPERE
Iq=(sqrt(2*e*Ip*B*10^6))*10^9;//QUANTUM NOISE IN NANO AMPERE
id=(sqrt(2*e*B*10^6*Id*10^-9))*10^9;//dark current in nano ampere
it=(sqrt((4*K*T*B*10^6)/Rl))*10^9;//thermal noise
disp(Iq,"QUANTUM NOISE IN NANO AMPERE")
disp(id,"dark current in nano ampere")
disp(it,"THERMAL NOISE in nano ampere")
