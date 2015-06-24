//Chapter 8
//Example 8_13
//Page 184

clear;clc;

r=1;
d=100;
go=30/sqrt(2);
mo=0.9;
delta=0.952;

vc=mo*go*delta*r*log(d/r);
lv=vc*sqrt(3);

printf("Disruptive critical voltage = %.2f kV/phase \n\n", vc);
printf("Line voltage = %.2f kV \n\n", lv);


