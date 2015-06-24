//Chapter 8
//Example 8_14
//Page 184

clear;clc;

v=132;
r=1.956/2;
vd=210;
go=30/sqrt(2);
mo=1;
delta=1;

vc=vd/sqrt(3);
dr=exp(vc/mo/go/delta/r);
d=dr*r;

printf("Conductor spacing = %.2f cm \n\n", d);