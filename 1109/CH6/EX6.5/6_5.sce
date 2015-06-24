clear;
clc;
s=2;f=300*(10^6);lo=1;ymin=0.8; //lo=wavelength
ampK=(s-1)/(s+1);
b=2*%pi/lo;
phi=(2*b*ymin)-%pi;
K=ampK*(exp(%i*phi));
Zr=(1+K)/(1-K);
A=real(Zr);
B=imag(Zr);
printf("Value of load impedance = %f /_ %f ohms",round(abs(Zr)*10)/10,fix(atan(B,A)*180*100/%pi)/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
