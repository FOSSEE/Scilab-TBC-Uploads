clc
//Chapter 2:Bipolar transistor amplifiers
//example 2.13 page no 53
//given
G=90//low frequency gain in dB
Ao=(G/20)//low frequency open loop gain
wT=150*10^6//gain bandwidth product
wo=wT/Ao//bandwidth
disp('the transfer function is')
disp('Av=3.16*e4/(1+jw/(2*pi*4.7*e3))')
