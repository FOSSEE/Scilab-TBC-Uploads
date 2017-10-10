//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.13
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
L=40;//Total fiber length in km
alphat=0.5;//Fiber transmission loss in dB/km
Pmin=-39;//Receiver sensitivity in dBm is the minimum power received by receiver
Ns=4;//Number of splices contributing to loss
Ls=0.5;//Loss of each splice in dB
Nc=2;//Number of connectors contributing to loss
Lc=1;//Loss of each connector in dB;
Pm=6;//Power margin in dB
//Let the source power be P
P=Pmin+Pm+Ns*Ls+Nc*Lc+L*alphat;//Minimum value of source power in dBm
mprintf("\n The source power must exceed %.2f dBm= %.2f mW",P,(10^(P/10)));//Taking 10^(P/10) to convert into mW

