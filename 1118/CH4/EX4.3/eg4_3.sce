clear;
//clc();

d=10;..//diameter of the conductor in mm
r=d/2;..//radius in mm
t=10;..//thickness in mm
r1=(r+t);
R=(r+ 2*t);
e1=3;
e2=2.5;
v=60;..//voltage in kv

a=r1/r;
b=R/r1;
c=e1/e2;

d=(r)*(log([a]) + c*log([b]));

gmax1=v/d;

printf("\n the potenial gradient at the surface of the conductor is:%.2f kV/mm\n",gmax1);
