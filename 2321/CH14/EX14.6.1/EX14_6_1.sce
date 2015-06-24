//Example No. 14.6.1
clc;
clear;
close;
format('v',7);
d=36000;//km(height of satellite)
f=4000;//MHz(frequency)
GT=20;//dB(Transmitter gain)
GR=40;//dB(Reciever gain)
PT=200;//W(Transmitted power)
PT=10*log10(PT);//dB(Transmitted power)
disp("Part (i)");
Ls=32.44+20*log10(f)+20*log10(d);//dB(Free space transmission loss)
disp(Ls,"Free space transmission loss in dB : ");
disp("Part (ii)");
PT=200;//W(Transmitted power)
PT_dB=10*log10(PT);//dB(Transmitted power)
PR_dB=PT_dB+GT+GR-Ls;//dB(Recieved power)
PR=10^(PR_dB/10);//W(Recieved power)
disp(PR*10^12,"Received power in pW : ");
