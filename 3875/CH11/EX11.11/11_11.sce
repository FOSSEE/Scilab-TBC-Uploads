clc;
clear;
n=3 //third order reflection
lambda=97 //wavelength in pm (third order)
tetha1=23 //Braggs angle for first order in degree
tetha2=60 //Braggs angle for third order in degree

//calculation
lambda_1=(n*lambda*sind(tetha1))/sind(tetha2)
d=(n*lambda)/(2*sind(tetha2))

mprintf("\nThe wavelength that undergoes first order reflection is = %d pm\n",lambda_1)
mprintf("The interplanar spacing is = %d pm",d)
