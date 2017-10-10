//Example 4// Ch 4
clc;
clear;
close;
// given data

a=7.5*1e5;
b=-4*1e4;
c=59.97;
p = poly([c, b,a], 'x', 'c');
alpha=roots(p);
printf('The distance it must travel to produce an avalanche of 1E9 electrons is (in m) %f',alpha(2))

