//Chapter 4, Exmaple 2, page 140
//Claculate electrode space
clc
clear
//based on the values of example 1
d2 = 0.01
d1 = 0.005
I2 = 2.7*10**-7
I1 = 2.7*10**-8
a = 1/(d2-d1)*log(I2/I1) // alpha
//10^9 = %e^a(a*d) 
//multiplying log on bith sides log(10^9) = a*d
ad = log(10^9)
printf("\n a*d = %f ",ad)
d = ad/a
printf("\n electrode space = %f m",d) 

//Answers may vary due to round off error
