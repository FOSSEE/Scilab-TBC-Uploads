// Example 2.3:Numerical Aperture
clc;
clear;
close;
v= 26.6;//normalised frequency
h=1.3;// Wavelenght in micro meters
a=25;//core radius in micro meters
NA=(v*h)/(2*%pi*a);// Numerical Aperture
disp(NA,"Numerical Aperture of the Fiber is")
