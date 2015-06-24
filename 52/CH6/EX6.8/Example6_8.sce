//Example 6.8
//Program to Plot Magnitude Responce of ideal B.R.F. with 
//wc1=0.33*pi and wc2=0.67*pi
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
hd(n)=(sin(%pi*(n-U))+sin(%pi*(n-U)/3)-sin(%pi*2*(n-U)/3))/(%pi*(n-U));
end
end
[hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of FIR BRF with N=11');
xgrid (2);