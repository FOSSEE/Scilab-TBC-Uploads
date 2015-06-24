//Example No. 7.10.2
clc;
clear;
close;
format('v',7);
N=12;//no. of turns
A=1;//m²(Area of loop)
Erms=100;//µV/m(field strength)
f=10;//MHz(tuned frequency)
theta=0;//degree(angle)
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^6);//m(Wavelength)
Vr=2*%pi*A*N*cosd(theta)*Erms*10^-6/lambda;//V(reciever input voltage)
disp(Vr*10^6,"Voltage induced in loop in µV/m : ");
