//Chapter 26
//Example 26_4
//PAge 600

clear;clc;

v=132*1e3;
f=50;
lt=200;
d=20;
s=4;
eo=8.854*1e-12;

r=d/2/1000;
c=2*%pi*eo/log(s/r);
w=2*%pi*f;
l=1/(3*w^2*c*lt)/1000;
xl=2*%pi*f*l;
fi=v/sqrt(3)/xl;
rating=v/sqrt(3)*fi;

printf("Capacitance between phase and nuetral = %.2f*10^-9 F/km \n\n", c*1e12);
printf("Capacitance between phase and earth = %.2f*10^-7 F \n\n", c*lt*1e7*1000);
printf("Required Inductance of the arc supression coil = %.2f H \n\n", l);
printf("Current through the coil = %.0f A \n\n", fi);
printf("Rating of the coil = %.0f kVA \n\n", rating/1000);

