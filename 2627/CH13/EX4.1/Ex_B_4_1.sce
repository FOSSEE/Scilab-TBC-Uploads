//Ex 4.1
clc;clear;close;
format('v',6);
fc=100;//kHz
fm=5;//kHz
LSB=[fc-fm fc];//kHz
USB=[fc fc+fm];//kHz
disp("Part (a)");
disp("Lower sideband is from "+string(LSB(1))+" kHz to "+string(LSB(2))+" kHz");
disp("Upper sideband is from "+string(USB(1))+" kHz to "+string(USB(2))+" kHz");
B=2*fm;//kHz
disp(B,"(b) Bandwidth(kHz)");
disp("part (c)");
fm=3;//kHz
f_usf=fc+fm;//kHz
disp(f_usf,"Upper side frequency(kHz)");
f_lsf=fc-fm;//kHz
disp(f_lsf,"Lower side frequency(kHz)");
