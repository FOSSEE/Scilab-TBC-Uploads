//Example 6.6
//Program to Plot Magnitude Responce of ideal H.P.F. with wc=0.25*pi
//N=11
clear;
clc ;
close ;
N=11;
U=6;
for n=-5+U:1:5+U
if n==6  
hd(n)=0.5;      
else
hd(n)=(sin(%pi*(n-U))-sin(%pi*(n-U)/4))/(%pi*(n-U));
end
end
[hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of FIR HPF with N=11');
xgrid (2);