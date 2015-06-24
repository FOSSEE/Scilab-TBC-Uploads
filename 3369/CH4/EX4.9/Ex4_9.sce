//Chapter 4, Exmaple 9, page 144
//Claculate distance and voltage
clc
clear
a = 39.8 // alpha
Y = 0.0354 // corfficient
p = 0.133 // kPa
Ep = 12000 // E/P , unit : V/m*kPa

d = (1/a)*(log(1/Y + 1)) // distance
E = Ep*p
V = E*d

printf("\n Distance = %f m",d)
printf("\n E = %f V/m",E)
printf("\n Volatge  = %f V",V)

//Answers may vary due to round off error
