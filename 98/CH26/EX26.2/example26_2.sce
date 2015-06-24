//Chapter 26
//Example 26_2
//Page 599

clear;clc;

v=230*1e3;
lt=200;
c=0.02*1e-6;
f=50;

cle=c*lt;
l=1/(3*(2*%pi*f)^2*cle);
xl=2*%pi*f*l;
vph=v/sqrt(3);
fi=vph/xl;
rating=vph*fi;

printf("Capacitance of line to earth = %.6f F \n\n", cle);
printf("Required inductance of Peterson coil = %.2f F \n\n", l);
printf("Current through Peterson coil = %.0f A \n\n", fi);
printf("Rating of Peterson coil = %.0f kVA \n\n", rating/1000);


