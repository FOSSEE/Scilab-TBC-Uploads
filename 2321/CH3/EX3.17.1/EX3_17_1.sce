//Example No. 3.17.1
clc;
clear;
close;
format('v',11);
PT=15;//W(Transmitted Power)
AeT=0.2;//m²(Effective aperture)
AeR=0.5;//m²(Effective aperture)
f=5;//GHz(frequency)
r=15;//km(line of sight distance)
c=3*10^8;//m/s(Speed of light)
lambda=c/(f*10^9);//m(Wavelength)
PR=PT*AeT*AeR/((r*1000)^2*lambda^2);//Watts(Power delivered to reciever)
disp(PR,"Power delivered to receiver in Watts : ");
//Answer is wrong in the book. lambda is 0.6 instead of 0.06 and lambda^2 is 0.06 instead of 0.0036
