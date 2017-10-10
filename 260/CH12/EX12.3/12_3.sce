//Eg-12.3
//pg-511

clear
clc

x = 1;
h1 = 0.1;
h2 = h1/2;

deff('out = func(in)','out = exp(in)')

//Using central difference formula

Dh1 = (func(x+h1)-func(x-h1))/(2*h1);

Dh2 = (func(x+h2)-func(x-h2))/(2*h2);

//Using equation [16],

Dnew = 4/3*Dh2 - 1/3*Dh1;

printf('The value of the derivative using Richardson extrapolation is %f\n',Dnew)

printf(' This value is very close to the exact value of 2.718\n')