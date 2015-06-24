//Example 6.10
//Program to Plot Magnitude Responce of given L.P.F. with specifications:
//N=7,w=pi/4
//Using Hanning Window
clear;
clc ;
close ;
N=7;
alpha=3;
U=1;
h_hann=window('hn',N);
for n=0+U:1:6+U
if n==4  
hd(n)=0.25;      
else
hd(n)=(sin(%pi*(n-U-alpha)/4))/(%pi*(n-U-alpha));
end
h(n)=hd(n)*h_hann(n);
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of given LPF with N=7');
xgrid (2);