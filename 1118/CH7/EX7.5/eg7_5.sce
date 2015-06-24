clear;
//clc();
D1=1;
D2=2;
r=0.5*25/1000;
a=sqrt(D1*D1+D2*D2)*D2;
b=0.7788*r*D1;
l=2*log([a/b])/10;
printf("\n the inductance is:  %.3f mH/km\n",l);
