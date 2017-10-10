// exa 3.13 Pg 74

clc;clear;close;

// Given Data
P=15;// kW
n1=200;// rpm
l=600;// mm
z2=18;// no. of teeth
m2=5;// mm
alfa2=14.5;// degree
l2=120;// mm
z1=72;// no. of teeth
m1=5;// mm
alfa1=14.5;// degree
l1=150;// mm
sigma_d=80;// MPa

d1=m1*z1;// mm
v1=%pi*d1*n1/(60*10**3);// m/s
Ft1=10**3*P/v1;// N (outwards)
Fr1=Ft1*tand(alfa1);// N (Downwards)
d2=m2*z2;// mm
v2=%pi*d2*n1/(60*10**3);// m/s
Ft2=10**3*P/v2;// N (outwards)
Fr2=Ft2*tand(alfa2);// N (Upwards)

// RAV*600=Fr1*450+Fr2*120 (Taking moments about bearing B)
RAV=(Fr1*450+Fr2*120)/600;// N (Downwards)
RBV=(Fr1-Fr2-RAV);// N (upwards)
MCV=RAV*l1;// N.mm
MBV=Fr2*l2;// N.mm

// RAH*600=-Ft1*450+Ft2*120 (Taking moments about bearing B)
RAH=(-Ft1*450+Ft2*120)/600;// N (Outwards)
RBH=Ft1+Ft2+RAH;// N (inwards)
MCH=RAH*l1;// N.mm
MBH=Ft2*l2;// N.mm

// Resultant Bending Moments
MC=sqrt(MCV**2+MCH**2);// N.mm
MB=sqrt(MBV**2+MBH**2);// N.mm
Mmax=max(MC,MB);// N.mm
T=10**3*P/(2*%pi*n1);// N.m
Me=(1/2)*(Mmax+sqrt(Mmax**2+T**2));// N.mm
// Me=(%pi/32)*d**3*sigma_d
d=(Me/((%pi/32)*sigma_d))**(1/3)
printf('\n shaft diameter is : %.f mm',d)
