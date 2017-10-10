clc;
clear;
alpha=0.01 //wedge angle in radian
lambda=6000*10^-10 //wavelength in m
n=10 //the fringe observed

//calculation
x=((2*n-1)*lambda)/4*alpha

mprintf("The distance at which the 10th fringe will be obtained from the edge of the wedge is =%1.2e m",x)
//The answer provided in the textbook is wrong.
