//Example 6.21
//Program to Plot Magnitude Responce of given L.P.F. with specifications:
//N=7,fc=1000Hz,F=5000Hz
clear;
clc ;
close ;
N=7;
U=4;
h_Rect=window('re',N);
for n=-3+U:1:3+U
if n==4  
hd(n)=0.4;      
else
hd(n)=(sin(2*%pi*(n-U)/5))/(%pi*(n-U));
end
h(n)=hd(n)*h_Rect(n);
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of FIR LPF with N=7');
xgrid (2)
disp(h,"Filter Coefficients,h(n)=");