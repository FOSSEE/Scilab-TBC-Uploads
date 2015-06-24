clc();
clear;
//To determine the number of guided modes
NA=0.28;                                  //numerical aperture
a=30;                                    //core radius
lambda=0.8;                              //wavelength in micro meter
f=(2*%pi*a*NA)/lambda;                   //normalised frequency
Ng=f^2/2                                 //number of guided modes
printf("The number of guided modes is %f",Ng);
