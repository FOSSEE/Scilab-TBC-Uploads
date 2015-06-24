
//Caption: Carrier power
//Example 8.8
//page no 382
//Find Carrier power,Bandwidth
clc;
clear;
Pe=10^-4;//probability of error of FSK
r=1*10^6//tranasmitted rate
N0=1*10^-7;//psd at input of the receiver
//from table error function 
//Pe=erffc(z)
z=3.71
T=1/r;
 //z=sqrt(Eb/N0)
//Eb=N0*z^2;      // Eb=bit energy
Ac=sqrt((z^2*2*N0)/T);

AP=(Ac/sqrt(2))^2;//average carrier power
disp("watts",AP,"Average carrier power  =");
BW=1/T;
disp("MHz",BW*10^-6,"Channel Bandwidth  =");
