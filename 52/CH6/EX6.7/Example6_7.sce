//Example 6.7
//Program to Plot Magnitude Responce of ideal B.P.F. with 
//wc1=0.25*pi and wc2=0.75*pi
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
hd(n)=(sin(%pi*3*(n-U)/4)-sin(%pi*(n-U)/4))/(%pi*(n-U));
end
end
[hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of FIR BPF with N=11');
xgrid (2);