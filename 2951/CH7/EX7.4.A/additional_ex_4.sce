clc;
clear;

Input_bit=5; //Input bit rate in Mbps

//bit rate in I,Q,C channels is one-third of input bit rate

fbI=Input_bit/3;//bit rate in I channel
fbC=Input_bit/3;//bit rate in C  channel
fbQ=Input_bit/3;////bit rate in I channel

Baud=fbI;//Baud in Mbps

fa=fbC/2;

//Output from Modulator is 
// 0.5cos(2*pi*49.17MHz)-0.5cos(2*pi*50.83MHz)

Nyquist=50.83-49.17;

disp(Nyquist,"Minimum Nyquist Bandwidth(in MHz)=");


