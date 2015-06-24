clc();
clear;
//To determine the number of guided modes
NA=0.25;                          //numerical apperture
lambda=0.75;                      //wavelength in micro metres
a=25;                             //core radius i.e 50/2=25
f=(2*%pi*a*NA)/lambda;             //normalised frequency
Ng=(f^2)/2                         //number of guided modes
printf("The number of guided modes is %f",Ng);