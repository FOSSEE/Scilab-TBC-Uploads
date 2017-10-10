// Exa 3.8
// TO find coverage radius of an access point.

clc;
clear all;

SNRmin=12;//in dB
n=3; //No of floors
Backgroundnoise=-115; //dBm
pt=100  //in dBm

//solution
pt_db=10*log10(pt);
Sr=Backgroundnoise+SNRmin; //receiver sensitivity
Lpmax=pt_db-Sr;
//Refering table 3.4
Lp_d0=38;  //ref path loss at the first meter(dB)
Lf=15+4*(n-1); //signal attenuation through n floors
y=3; //path loss exponent
X=10; //Shadowing effect(dB)
d=10^((Lpmax-Lp_d0-Lf-X)/30); //max allowable path loss
printf('Coverage radius of an access point = %d m \n',round(d));
