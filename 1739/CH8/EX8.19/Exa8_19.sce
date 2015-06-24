//Exa 8.19
clc;
clear;
close;
//Given data :
lambda=1.3;//in um
lambda=lambda*10^-6;//in meter
Id=16;//in nA
Id=Id*10^-9;//in Ampere
ETA=90;//Quantum Efficiency in %
RL=1000;//in Ohm
P=1.2;//in uW
P=P*10^-6;//in Watts
B=80;//in Mhz
B=B*10^6;//in Hz
T=20;//in degree C
T=T+273;//in kelvin
q=1.6*10^-19;//in c
K=1.38*10^-23;//Boltzman Constant
h=6.63*10^-34;//Planks constant
c=3*10^8;//in m/s
Ip=(ETA/100)*q*lambda*P/(h*c);//in Ampere
Iq=sqrt(2*q*Ip*B);//in Ampere
disp(Iq*10^9,"Mean square quantum nooise in nA : ");
I_dark=sqrt(2*q*Id*B);//in Ampere
disp(I_dark*10^9,"Mean square dark current noise in nA :");
It=sqrt(4*K*T*B/RL);//in Ampere
disp(round(It*10^9),"Mean square thermal current noise in nA :");