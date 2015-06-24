clc;clear;
//Example 8.6

//given data
W=1.43*10^-10;//wavelength in m
Z=74;//atomic no
R=10.97*10^6;//Rydberg constant in 1/m

//calcualation
b=74-sqrt(36/(5*R*W));//Transition from to M to L
disp(b,'the screening const.')