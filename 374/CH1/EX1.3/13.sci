//Chapter 1 Example3//
clc;
clear;
//refractive index of W step index fibre=n1,refractive index difference between core and cladding=d,numerical aperture=NA//
d=0.02;
n1=1.46;
n2=n1-(n1*d);
v=n1+n2;
b=n1-n2;
NA=sqrt(v*b);
printf("\n a) numerical aperture=%f,n\",NA);
//solid acceptance angle in air=as,critical angle of core cladding interface=p//
as=%pi*(NA^2);
printf("\n b) solid acceptance angle in air=%f,n\",as);
p=asind(n2/n1);
printf("\n c) critical angle of core cladding interface=%f,n\",p);