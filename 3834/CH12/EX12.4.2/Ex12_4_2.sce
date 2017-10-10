//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.4.2
clc;
clear ;
//given

w1=10.5E-6;//MFD of transmission fibre in m
lambda=1550E-9;//operating wavelength in m
w2=5.3E-6;//assumed average MFD of Pirelli EDF-PAX-01 Fiber in m

a=w1*w2;
y=w2^2+w1^2;
z=(2*a)/y;

Ldb=-10*log10(z^2);//Connection loss in transmission fibre in dB
mprintf("Connection loss in transmission fibre = %.2f dB",Ldb);//the answer vary due to rounding
