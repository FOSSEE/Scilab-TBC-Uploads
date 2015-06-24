//clear//
//Caption:program to calculate bandwidth from its spectrum
//Example1.2
//page10
clear;
clc;
close;
fLow = 10^4; //fLOW = 10KHZ lowest frequency
fHigh = 10^5; //FHigh = Highest frequency
B = fHigh - fLow;
disp(B,'Bandwidth in Hz = ')
//Result
//Bandwidth in Hz =    90000.
