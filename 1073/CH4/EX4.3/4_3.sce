
clc;
clear;
//Example 4.3
L=1; //[m]
e=0.8  ; //Emissivity
sigma=5.67*10^-8 ;   //[m^2.K^4]
T1=423;  //[K]
T2=300;  //[K]
Do=60;   //[mm]
Do=Do/1000;  //[m]
A=%pi*Do*L  //[sq m]
A=0.189     //Approx in book [m^2]
Qr=e*sigma*A*(T1^4-T2^4)    //[W/m]
printf("\n Net radiaiton rate per 1 metre length of pipe is %d W/m",round(Qr));

