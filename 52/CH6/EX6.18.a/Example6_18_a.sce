//Example 6.18a
//Program to design L.P.F. filter with following specifications:
//N=15, wc=pi/4
clear;
clc ;
close ;
N=15;
U=1;
for n=0+U:1:N-1+U
h(n)=(1+cos(2*%pi*(7-n)/N))/N;
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure;
plot (2*fr , hzm_dB );
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of FIR LPF with N=15');
xgrid (2)