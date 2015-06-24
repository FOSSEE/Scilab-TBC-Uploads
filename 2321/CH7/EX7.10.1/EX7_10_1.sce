//Example No. 7.10.1
clc;
clear;
close;
format('v',6);
A=1;//m²(Area of loop)
N=400;//no. of turns
Q=100;//Quality factor
theta=60;//degree(angle)
Erms=10;//µV/m(field strength)
f=1;//MHz(tuned frequency)
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^6);//m(Wavelength)
Vr=Q*2*%pi*A*N*cosd(theta)*Erms*10^-6/lambda;//V(reciever input voltage)
disp(Vr*1000,"Input voltage to the receiver in mV : ");
