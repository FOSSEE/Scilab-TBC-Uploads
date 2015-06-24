clc;
clear;

//x(t)=2sin(4000*pi*t)+3sin(5000*pi*t)+4sin(8000*pi*t)

fh=8000/2;
fl=4000/2;

disp(fh,"a) Highest Frequency component(in Hz)");
disp(fl,"Lowest Frequency component(in Hz)");

fs=2*fh;
disp(fs," Minimum Sampling frequency(in Hz)");

Bw=fh-fl;
disp(Bw," b)Bandwidth(in Hz) is");

n=fh/Bw;
disp(n,"integer factor");

Fs_new=2*fh/n;
disp(Fs_new,"Required Sampling frequency in this case(in Hz) is");


