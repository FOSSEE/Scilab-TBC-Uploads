clc;
//page 741
//problem 14.2

//The Antenna noise temperature is T_ant = 10 K
T_ant = 10;

//The reciever noise temperature is Te = 140 K
Te = 140;

//Midband available gain of reciever gao = 10^10
gao = 10^10;

//Noise bandwidth is BN = 1.5 * 10^5 Hz
BN = 1.5 * 10^5;

//Boltzman constant  k = 1.3806488 × 10-23 m2 kg s-2 K-1
k = 1.3806488 * 10^-23; 

//Available noise power at output is pao

pao = gao*k*(T_ant + Te)*BN;

disp('The available output noise power is '+string(pao)+' Watts');



