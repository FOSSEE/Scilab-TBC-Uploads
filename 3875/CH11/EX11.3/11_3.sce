clc;
clear;
d=275 //interplanar distance in pm
tetha=45 //glancing angle in degree

//calculation
//case(1) when intensity maxima is 3
n=3
lambda=(2*d*sind(tetha))/n
mprintf("\nThe wavelength is = %1.3f pm\n",lambda)

//case(2) when intensity maxima is 4
n=4
lambda=(2*d*sind(tetha))/n
mprintf("The wavelength is = %1.3f pm",lambda)
mprintf("Only for n=3 and n=4,the value of lambda lies within the range 95 pm to 140 pm")
//The answer varies due to round off error.
