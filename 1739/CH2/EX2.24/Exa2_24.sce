//Exa 2.24
clc;
clear;
close;
//Given data :
delta=1;//relative refractive index difference in %
n1=1.47;//unitless
lambda=1.5;//in um
disp("v=2*%pi*a*n1*sqrt(2*delta)/lambda");
disp("For single mode transmission in graded index fibre, v=2.405*sqrt((alfa+2)/alfa)");
disp("Hence we have :");
alfa=2;//unitless
a=2.405*sqrt((alfa+2)/alfa)*lambda/(2*%pi*n1*sqrt(2*delta/100));
disp(2*a,"Hence the diameter in micro meter : ");