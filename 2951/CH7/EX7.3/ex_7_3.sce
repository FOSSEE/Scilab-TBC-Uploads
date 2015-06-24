clc;
clear;
bit_rate=36;// information bit rate in Kbps
m=3;// since 8-PSK

Baud=bit_rate*10^(3)/m;
Bw=36*10^(3)/m;
n=36000/12000;

disp(Baud,"Baud=");
disp(Bw,"BW=");
disp(n,"Bandwidth efficiency(in bits/cycle)=");
