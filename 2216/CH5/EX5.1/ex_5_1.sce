// Example 5.1:w and wp
clc;
clear;
close;
format('v',7)
n=1.46;//core refractive index
d=0.003;//differnce in core-cladding refrative index
a=4;//core radius in micro meter
h1=1.30;// inmicro meter
h2=1.55;//in micro meter
v1=((2*%pi*(a*10^-6))*n*sqrt(2*(d)))/(h1*10^-6);//normalised frequency parameter
v2=((2*%pi*(a*10^-6))*n*sqrt(2*(d)))/(h2*10^-6);//normalised frequency parameter
w1=(a*10^-6)*(0.65+((1.619)/(v1)^(3/2))+(2.879/(v1)^6));//in meter
wp1=w1-(a*10^-6)*(0.016+((1.567)/(v1)^7));//in micro meter
w2=(a*10^-6)*(0.65+((1.619)/(v2)^(3/2))+(2.879/(v2)^6));//in meter
wp2=w2-(a*10^-6)*(0.016+((1.567)/(v2)^7));//in micro meter
disp(" w is "+string(w1*10^6)+" and wp is "+string(wp1*10^6)+" in micro meter when wavelength is 1.30 micro meter")
disp(" w is "+string(w2*10^6)+" and wp is "+string(wp2*10^6)+" in micro meter when wavelength is 1.55 micro meter")
