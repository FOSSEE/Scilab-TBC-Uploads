//Ex:2.6
clc;
clear;
close;
x1r=2*%pi/3;// in radian
x2r=2*%pi/3;// in radian
D=4*%pi/(x1r)^2;//  the max directivity
// Now, let us find the exact value of the max directivity and compare the result
// y=Bo.cos(x)
// ymax=Bo
// Prad=integration of (Bo.cos(x).sin(x)) with limit 0 to 2*pi
P=integrate('sin(2*x)','x',0,2*3.14);
// Prad=%pi*Bo*integration of (Bo.cos(x).sin(x)) with limit 0 to 2*pi
// then we get Prad=%pi*Bo
// Do=(4*pi*ymax)/Prad=4*pi*Bo/%pi*Bo
Do=4;// exact value of the max directivity
printf("The max directivity = %f (dimensionless)", D);
printf("\n The exact value of the max directivity = %d (dimensionless)", Do);
printf("\n The exact max directivity is 4 and its approx. value is 2.84. Better approximations can be obtained if the patterns have much narrower beamwidths.");