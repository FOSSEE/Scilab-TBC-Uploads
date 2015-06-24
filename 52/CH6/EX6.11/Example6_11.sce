//Example 6.11
//Program to Plot Magnitude Responce of given L.P.F. with specifications:
//wp=20rad/sec, ws=30rad/sec, wsf=100rad/sec
//as=44.0dB, ap=0.1dB
//Using Kaiser Window
clear;
clc ;
close ;
wsf=100//rad/sec
ws=30;//rad/sec
wp=20;//rad/sec
as=44.0//dB
ap=0.1//dB
B=ws-wp;
wc=0.5*(ws+wp);
wc1=wc*2*%pi/wsf;
delta1=10^(-0.05*as);
delta2=(10^(0.05*as)-1)/(10^(0.05*as)+1);
delta=min(delta1,delta2);
alphas=-20*log10(delta);
alpha=0.5842*(alphas-21)^0.4+0.07886*(alphas-21)
D=(alphas-7.95)/14.36;
N1=wsf*D/B+1;
N=ceil(N1);
U=ceil(N/2);
win_l=window('kr',N,alpha);
for n=-floor(N/2)+U:1:floor(N/2)+U
if n==ceil(N/2); 
hd(n)=0.5;      
else
hd(n)=(sin(%pi*(n-U)/2))/(%pi*(n-U));
end
h(n)=hd(n)*win_l(n);
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of given LPF using Kaiser Window');
xgrid (2);
disp(h,"Filter Coefficients,h(n)=");