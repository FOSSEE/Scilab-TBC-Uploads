clc;
clear;
d=275 //interplanar distance in pm
tetha=45 //glancing angle in degree

//calculation
//case(1) when intensity maxima is 3
n1=3
lambda=(2*d*sind(tetha))/n1
disp("case (1)")
mprintf("The wavelength for n = %d is = %d pm\n",n1,ceil(lambda))

//case(2) when intensity maxima is 4
n2=4
lambda=(2*d*sind(tetha))/n2
disp("case (2)")
mprintf("The wavelength for n = %d is = %1.1f pm\n",n2,lambda)
////The answer varies due to round off error.


mprintf("Only for n=%d and n=%d,the value of lambda lies within the range 95 pm to 140 pm. Hence Bragg reflections are observed only for these two wavelengths",n1,n2)

