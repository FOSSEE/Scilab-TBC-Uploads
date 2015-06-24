//Chapter 4, Exmaple 8, page 143
//Claculate first and secondary ionization coefficient
clc
clear
//(a)first ionization coefficient
//Using equation 4.7a
d1 = 0.005
a1d1 = log(1.22)
a1 = a1d1/d1

d2 = 0.01504
a2d2 = log(1.82)
a2 = a2d2/d2

d3 = 0.019 // wrong value used in the text
a3d3 = log(2.22)
a3 = a3d3/d3

printf("\n Alpha 1 = %f m^-1",a1)
printf("\n Alpha 2 = %f m^-1",a2)
printf("\n Alpha 3 = %f m^-1",a3)
printf("\n From the above results we can understand that ionization mechanism must be acting at d3 ")

//secondary ionization coefficient
I = 2.22
e = exp(a1*d3)
Y = (I-e)/(I*(e-1))
printf("\n secondary ionization coefficient = %f ",Y)

//Answer may vary due to round off error.

