//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.15
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
B=400e6;//Bit rate in b/s
BER=1e-9;//Bit error rate
L=100;//Total fiber length in km

//The Total system rise time is given as:
Ts=0.7/B;//The expression for total rise time under NRZ transmission in s
mprintf("\n The total system rise time Ts=%.2f ns",Ts/1e-9);//Dividing by 10^(-9) to convert into ns 
