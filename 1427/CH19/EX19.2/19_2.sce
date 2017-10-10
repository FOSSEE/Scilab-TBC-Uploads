//ques-19.2
//Calculating energy per photon for a radiation
clc
w=650;//wavelength (in pm)
E=(6.626*10^-34*3*10^8)/(w*10^-12);
printf("The energy per photon for the radiation is %.3f*10^-16 J.",E*10^16);
