clc;
clear;
bin_signal=20; //binary signal in kbps
N=1;//since ASK

Bw=bin_signal*10^(3);
Baud=bin_signal*10^(3);

disp(Bw,"Bandwidth(in Hz)=");
disp(Baud,"Baud rate=");
