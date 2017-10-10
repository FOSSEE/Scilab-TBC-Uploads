// Exa 21.9
// To calculate rmax for the interference scenarios (see Figure 21.21) using Smin from Example 21.8.

clc;
clear all;

SIRmin=21.6; //From eg 21.8 i.e(13.36 dB)
d=10; //distance between AP and IEEE 802.11 device in m
PMs=40; // transmitted power of the IEEE 802.11 device in dBm
PBt=20; //the transmitted power by the BT in dBm
Y=4 ; //path loss exponent

//solution
rmax=d*(SIRmin*PMs/PBt)^(1/Y);
printf('Maximum coverage range is %.1f metres \n',rmax);
