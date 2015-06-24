//Example 6.9a
//Program to Plot Magnitude Responce of ideal H.P.F. 
//using Hanning Window 
//wc1=0.25*pi
//N=11
clear;
clc ;
close ;
N=11;
U=6;
h_hann=window('hn',N);
for n=-5+U:1:5+U
if n==6  
hd(n)=0.75;      
else
hd(n)=(sin(%pi*(n-U))-sin(%pi*(n-U)/4))/(%pi*(n-U));
end
h(n)=h_hann(n)*hd(n);
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of FIR HRF with N=11 using Hanning Window');
xgrid (2);