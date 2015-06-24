//EXAMPLE 9.7
//LP TO HP Transformation

clc;
clear;
z=%z;
Glz=(0.0662272*(1+1/z)^3)/((1-0.2593284/z)*(1-0.6762858/z+0.3917468/(z^2)));
wc=0.25*%pi;//Oringinal passband edge
Wc=0.55*%pi;//Required passband edge
l=-cos((wc+Wc)/2)/cos((wc-Wc)/2);
disp(l,'lambda = ');

w=0:0.001:1;
Ghz=horner(Glz,-((z + l)/(1 +l*z)));//LP TO HP Transformation formula
den=factors(denom(Ghz));
disp(Ghz,'The transfer function is Gdz = ');
disp(den,'the facors of the denominator are = ');