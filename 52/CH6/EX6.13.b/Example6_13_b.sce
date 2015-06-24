//Example 6.13b
//Program to Plot Magnitude Responce of ideal differentiator with specifications:
//N=8,w=pi
//using Hamming window
clear;
clc ;
close ;
N=8;
alpha=7/2;
U=1;       //Zero Adjust
h_hamm=window('hm',N);
for n=0+U:1:7+U
hd(n)=-(sin(%pi*(n-U-alpha)))/(%pi*(n-U-alpha)*(n-U-alpha));
h(n)=hd(n)*h_hamm(n);
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of given ideal differentiator using Hamming Window, N=8');
xgrid (2)