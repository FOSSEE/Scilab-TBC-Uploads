//Chapter 9_Active Filters
//Caption : Determine Q Fl and Fh
//Example9.6:A certain two-pole band pass filter response is required with a centre frequency of 2 kHz and a 3 dB bandwidth of 400 Hz. Determine Q,Fl and Fh.
//Solution:
clear;
clc;
Fo=2*10^3;//centre frequency in Hz
BW=400;//3 dB bandwidth
Q=Fo/BW;// Q-factor of band pass filter
Fl=Fo*sqrt(1+1/(4*Q^2))-Fo/(2*Q);
Fh=Fo*sqrt(1+1/(4*Q^2))+Fo/(2*Q);
disp('Hz',Fl,'lower cutt off frequency is:')
disp('Hz',Fh,'Higher cutt off frequency is:')