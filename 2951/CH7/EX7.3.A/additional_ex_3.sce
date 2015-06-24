clc;
clear;
N=3;// since 8-PSK
bit_rate=36;// in kbps

Bw=bit_rate*10^(3)/N;
baud=bit_rate*10^(3)/N;
n=bit_rate*10^(3)/Bw;

disp(Bw," Minimum Bandwidth(in Hz)=");
disp(baud,"Baud rate=");
disp(n,"Bandwidth efficiency(in bits per second per cycle of bandwidth)=");
