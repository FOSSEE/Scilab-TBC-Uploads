clc;
// page no 731
// prob no 19.7
// In given problem a TV receiver is tuned to channel 6.
//All modern Rx uses a picture IF of 45.75 MHz with high-side injection of the signal into the cable.
// The picture carrier of channel 6 is at a frequency of 83.25MHz,so
ch=6;
Fc=83.25;// expressed in MHz
IF=45.75;//expressed in MHz
f_lo=Fc+IF;
a=f_lo+ch/2; b=f_lo-ch/2;
disp('band','MHz',a,'to','MHz',b,'The interference would in');