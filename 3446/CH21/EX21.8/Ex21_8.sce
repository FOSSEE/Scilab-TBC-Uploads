// Exa 21.8
// To determine SIRmin and r_max.

clc
clear all;

d=10; // distance between AP and IEEE 802.11 device in metres
Y=4; //path loss exponent
PBt=20;  //the transmitted power by the BT in dBm
PAp=40;  //the transmitted power by the AP in dBm
Pe=10^-5;//acceptable error probability

//solution
//Pe=0.5*e^(-0.5*Eb/No)
 SIR=log(Pe/0.5)/(-0.5);// signal-to-interference ratio 
rmax=d*(SIR*PBt/PAp)^(1/Y);// range of interference between Bluetooth and 802.11 device 
printf('Minimum SIR is %.2f dB = %.1f \n',10*log10(SIR),SIR);
printf(' Maximum coverage range is  %.2f metres \n',rmax);
