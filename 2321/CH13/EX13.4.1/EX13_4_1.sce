//Example No. 13.4.1
clc;
clear;
close;
format('v',7);
Pr1=0.0297/1000;//W(Recieved power)
Pr2=0.0471/1000;//W(Recieved power)
Pr3=0.0374/1000;//W(Recieved power)
Pt=1;//W(Transmitted power)
R=10;//m(Radius)
f=980;//MHz(Frequency)
f=f*10^6;//Hz(Frequency)
c=3*10^8;//m/s(Speed of light)
lambda=c/f;//m(Wavelength)
A=20*log10(4*%pi*R/lambda)+10*log10(Pr1/Pt);//(A=G1dB+G2dB)
B=20*log10(4*%pi*R/lambda)+10*log10(Pr2/Pt);//(B=G1dB+G3dB)
C=20*log10(4*%pi*R/lambda)+10*log10(Pr3/Pt);//(C=G2dB+G3dB)
G1dB=(A+B-C)/2;
G2dB=(A-B+C)/2;
G3dB=(-A+B+C)/2;
disp(round(G3dB),round(G2dB),round(G1dB),"Gain of antennas, G1db, G2dB & G3dB(in dB) are :  ");
