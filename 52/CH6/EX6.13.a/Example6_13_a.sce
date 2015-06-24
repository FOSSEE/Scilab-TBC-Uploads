//Example 6.13a
//Program to Plot Magnitude Responce of ideal differentiator with specifications:
//N=8,w=pi
//using Rectangular window
clear;
clc ;
close ;
N=8;
alpha=7/2;
U=1;
h_Rect=window('re',N);
for n=0+U:1:7+U
hd(n)=-(sin(%pi*(n-U-alpha)))/(%pi*(n-U-alpha)*(n-U-alpha));
h(n)=hd(n)*h_Rect(n);
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of given ideal differentiator using Rectangular Window, N=8');
xgrid (2)