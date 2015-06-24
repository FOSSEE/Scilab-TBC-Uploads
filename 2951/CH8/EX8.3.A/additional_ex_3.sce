clc;
clear;

PSD=10^(-9); //noise PSD in W/Hz
Bw=4000;//Wandwidth in Hz

//a) 
E=0.1 //Energy in Joules
C=Bw*log2(1+E/(2*PSD*Bw));
disp(C,"a) Capacity of the gaussian channel(in bits/s) when E is 0.1J=");

//b) 
E=0.001 //Energy in Joules
C=Bw*log2(1+E/(2*PSD*Bw));
disp(C,"b) Capacity of the gaussian channel(in bits/s) when E is 0.001J=");

//c)
Bw=10000;
C=Bw*log2(1+E/(2*PSD*Bw));
disp(C,"d) Capacity of the gaussian channel(in bits/s) when Bw is 10Khz=");

disp("100 times fall in Energy when the BW is increased by 2.5 times");
