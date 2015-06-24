//Chapter 8
//Example 8_16
//Page 185

clear;clc;

pc=53;
v=106;
loss=98;
pl=110.9;
cv=113;

sq=sqrt(loss/pc);
vc=(sq*v/sqrt(3)-pl/sqrt(3))/(sq-1);
w=(cv/sqrt(3)-vc)^2/(v/sqrt(3)-vc)^2*pc;

printf("Critical disruptive voltage = %.2f kV \n\n", vc);
printf("Power loss at %.0f kV = %.0f kW \n\n", cv, w);
