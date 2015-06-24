// sum 8-3
clc;
clear;
d=1.626;
A=2211;
m=0.145;
rm=3;
ri=(rm-(d/2));
sigma=A/(d^m);
W=(sigma*%pi*(d^3)*ri)/(32*(rm^2));

  // printing data in scilab o/p window
printf("Ultimate tensile Strength is %0.1f MPa ",sigma);
printf("\n Force at which the spring hook fails is %0.1f N ",W);

//The difference in the values of sigma and W is due to rounding-off the digits.