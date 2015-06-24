//Ex:3.16
clc;
clear;
close;
a=25;// radius in um
NA=0.3;// Numerical aperture
y=1;// wavelength in um
v=(2*%pi*a*NA)/y;// the normalised frequency
V=47.1;// the normalised frequency
M=(V*V)/4;// The mode volume
printf("The normalised frequency =%f", v);
printf("\n The mode volume =%d guided modes", M);