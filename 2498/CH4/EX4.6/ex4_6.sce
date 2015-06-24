// Exa 4.6
clc;
clear;
close;
format('v',6)
// Given data
Alpha = 0.975;
Beta = Alpha/(1-Alpha);
// The value of beta,
disp(Beta,"The value of Beta is");
Beta = 200;
// The value of alpha,
Alpha = Beta/(1+Beta);
disp(Alpha,"The value of Alpha is");
