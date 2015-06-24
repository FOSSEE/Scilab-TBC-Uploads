//Ex:3.14
clc;
clear;
close;
a=25;// radius in um
y=1.3;// wavelength in um
v=26.6;// the normaised frequency
NA=(v*y)/(2*%pi*a);// Numerical aperture
a_c=%pi*(NA)^2;
M=(v*v)/2;
printf("The number of modes=%f", NA);
printf("\n The number of modes=%f", a_c);
printf("\n answer in textbook is wrong");
printf("\n The number of modes=%f", M);