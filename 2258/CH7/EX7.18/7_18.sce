clc();
clear;
// To calculate the density and mobility of charge carrier
RH=-7.35*10^-5;    //hall coefficient
e=1.6*10^-19;
n=(-1/(RH*e));
sigma=200;
mew=sigma/(n*e);
printf("density of charge carriers in m^3 is");
disp(n);
printf("mobility of charge carriers is %f m^2/Vs",mew);
