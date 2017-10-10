// Exa 9.4
// To calculate
//(a) the frequency shift between binary 1 and binary 0,
//(b) the transmitted frequencies if the carrier frequency is 900 MHz, and 
//(c) the bandwidth efﬁciency in bps/Hz.

clc;
clear all;

CHBW=200; //Channel BW in KHz
R=270.83; //Data rate in kbps
Fc=900;  //carrier frequency in MHz

//solution
FreqShift=0.5*R;
//Transmitted Frequencies
Fh=Fc*1000+0.25*R;//Max
Fl=Fc*1000-0.25*R;//Min
BWEff=R/CHBW;
printf('The frequency shift between binary 1 and binary 0 is %.3f kHz\n ',FreqShift);
printf('Maximum and Minimum value of transmitted frequencies are %.4f mHz and %.4f mHz respectively\n ',Fh/1000,Fl/1000);
printf('Bandwidth efficiency is %.2f bps/Hz',BWEff);
