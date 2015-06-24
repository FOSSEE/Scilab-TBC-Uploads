//clc();
clear;
// To determine the order that will be visible at a point
n1=21;
lambda1=6000*10^(-8);            // The 21st order maximum is observed for source of light in centimetres
lambda2=4500*10^(-8);
n2=(n1*lambda1)/(lambda2);
printf("The order that will be visible if the source is replaced by 4500 Armstrong is %f",n2);
