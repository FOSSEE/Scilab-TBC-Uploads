//fiber optic communications by joseph c. palais
//example 11.10
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
RINdB=-140//RIN in dB/Hz
deltaf=100*10^6//bandwidth in Hz
P=10*10^-6//Average incident power in Watts
Row=0.5//Responsivity in uA/uW

//to find
RIN=10^(RINdB/10)//RIN in /Hz
PNL=sqrt(RIN*P^2*deltaf)//Laser Noise power in Watt
mprintf("Laser Noise power=%fuW",PNL*10^6)//multiplication by 10^6 to cinvert the unit from W to uW
IN=Row*PNL// Noise current in A
mprintf(" \nNoise current=%fuA",IN*10^6)//multiplication by 10^6 to cinvert the unit from A to uA
