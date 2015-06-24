//Chapter 4, Exmaple 1, page 139
//Claculate alpha and No. of electrons emmited
clc
clear
//Claculate (a)alpha
d2 = 0.01
d1 = 0.005
I2 = 2.7*10**-7
I1 = 2.7*10**-8
alpha = 1/(d2-d1)*log(I2/I1)
//(b)number of electrons emmited from cathode per second
I0 = I1*%e**(-alpha*d1)
n0 = I0/(1.6*10**-19)
printf("\n Part (a)\n alpha = %f m^-1",alpha)
printf("\n Part (b)\n I0 = %e ",I0)
printf("\n No of electrons emitted = %e electrons/s",n0)
//Answer may vary due to round off error
