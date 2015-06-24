//Example 6.20
//Program to Plot Magnitude Responce of given L.P.F. with specifications:
//N=13,w=pi/6
//Using Hamming Window
clear;
clc ;
close ;
N=13;
alpha=6;
U=1;
h_hamm=window('hm',N);
for n=0+U:1:12+U
if n==7  
hd(n)=0.167;      
else
hd(n)=(sin(%pi*(n-U-alpha)/6))/(%pi*(n-U-alpha));
end
h(n)=hd(n)*h_hamm(n);
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of given LPF with N=13');
xgrid (2)
disp(h,"Filter Coefficients,h(n)=");
disp(h,"Filter Coefficients,h(n)=");