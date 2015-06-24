//Example No. 7.10.6
clc;
clear;
close;
format('v',6);
a=0.5;//m(radius)
f=0.9;//MHz(OPerating frequency)
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^6);//m(wavelength)
C=2*%pi*a;//m(Circumference)
if C/lambda<1/3 then
    D=3/2;//Directivity
elseif C/lambda>1/3 then
    D=0.682*C/lambda;//Directivity
end
disp(D,"Directivity : ");
