//values taken from eg7.1
clear;
//clc();
r=10/1000;
d=3;
h=6;
h1=2*h;
h2=2*h;
h12=sqrt(d^2 + 4*h^2);

h21=h12;

hm=sqrt(h12*h21);
hs=sqrt(h1*h2);

cn=1/(18*(10^9)*(log([d/r])-log([hm/hs])));
printf("\n the capacitance  is:  %f*10^(-12) F/m\n ",cn*10^(12));

cl=0.5*cn;
printf("\n the capacitance  is:  %f*10^(-9) F/km\n ",cl*10^(12));
