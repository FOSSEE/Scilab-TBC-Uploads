//Example 6.12
//Program to Plot Magnitude Responce of given B.P.F. with specifications:
//wp1=40pi rad/sec, wp2=60pi rad/sec
//ws1=20pi rad/sec, ws2=80pi rad/sec
//as=30dB, ap=0.5dB
//F=100 Hz
//Using Kaiser Window
clear;
clc ;
close ;
wsf=200*%pi;//rad/sec
ws1=20*%pi;//rad/sec
ws2=80*%pi;//rad/sec
wp1=40*%pi;//rad/sec
wp2=60*%pi;//rad/sec
as=30//dB
ap=0.5//dB
B=min(wp1-ws1,ws2-wp2);
wc1=wp1-B/2;
wc2=wp2+B/2;
wc1=wc1*2*%pi/wsf;
wc2=wc2*2*%pi/wsf;
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
hd(n)=0.4;      
else
hd(n)=(sin(0.7*%pi*(n-U))-sin(0.3*%pi*(n-U)))/(%pi*(n-U));
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