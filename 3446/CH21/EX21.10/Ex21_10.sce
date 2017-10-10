// Exa 21.10
// Repeat Problems 21.8 and 21.9, if the IEEE 802.11 FH device is replaced by the IEEE 802.11 DS device (Gp=11).

clc
clear all;

Gp=11;//processing gain(given)
//Defining variables from Exa 21.8 & 21.9
PBt=20; //  transmitted power by the BT in dBm
PMs=40;  // transmitted power of the IEEE 802.11 device in dBm
PAp=40;  // transmitted power by the AP in dBm
d=10;  // distance between AP and IEEE 802.11 device in m
Y=4;  //path loss exponent
Pe=10^-5;//Error probability

//solution
//Pe=0.5*e^(-0.5*Eb/No)
SIR=log(Pe/0.5)/(-0.5);
r1max=d*(SIR*PBt/(PAp*Gp))^(1/Y);// range of interference between Bluetooth and 802.11 device 
printf(' Maximum coverage range for IEEE 802.11 DS is  %.2f metres \n',r1max);
r2max=d*(SIR*PMs/(PBt*Gp))^(1/Y);
printf('  Maximum coverage range for IEEE 802.11 FH is %.2f metres \n',r2max);
disp(" Thus, the interference ranges are smaller for the IEEE 802.11 DS device compared to the IEEE 802.11 FH device.")
