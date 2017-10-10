//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 9.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
L=15;//Length of link in km
Deltaf=100e6;//Bandwidth in b/s
Pmin=-50;//Receiver sensitivity in dBm is the minimum power received by receiver
alphat=2;//Fiber transmission loss in dB/km
Ns=10;//Number of splices contributing to loss
Ls=0.5;//Loss of each splice in dB
Lc=1;//Detector coupling loss in dB
La=5;//Additional Losses due to various factors in dB;
//Let the transmitter launch power in dBm be 'P'
P=0;

Margin=P-Pmin;//Power Margin in dBm
mprintf("\n Margin = %d dBm",Margin);

//Let the total system loss in dB be 'Lt'
Lt=alphat*L+Lc+Ns*Ls+La;
mprintf("\n Total System Loss = %d dB",Lt);
mprintf("\n Excess power margin = %d dB",Margin-Lt);//Excess power margin in dB
