clear all
clc
close

a=7.5*1e5;
b=-4*1e4;
c=43.75;
p = poly([c, b,a], 'x', 'c');
alpha=roots(p);
printf('Minimum distance measured from the cathode at which an electron may start an avalanche having a size of 1E19 is (in m) %f',alpha(2))
