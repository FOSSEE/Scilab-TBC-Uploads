//Eg-12.4
//pg-514

clear
clc

x = 0.01;
h1 = 0.0001;
h2 = h1/2;

Re = 10^4;

deff('out = func(in)','out = 1/in^0.5 - 1.77*log(Re*in^0.5) + 0.6')

//Using central difference formula

Dh11 = (func(x+h1)-func(x-h1))/(2*h1);

Dh21 = (func(x+h2)-func(x-h2))/(2*h2);

Dh12 = (-func(x+2*h1) + 16*func(x+h1) - 30*func(x) + 16*func(x-h1) - func(x-2*h1))/(12*h1^2);

Dh22 = (-func(x+2*h2) + 16*func(x+h2) - 30*func(x) + 16*func(x-h2) - func(x-2*h2))/(12*h2^2);



//Using equation [16],

D1new = 4/3*Dh21 - 1/3*Dh11;

D2new = 4/3*Dh22 - 1/3*Dh12;

printf('First Derivative = %f\n',D1new)
printf('Second Derivative = %f\n',D2new)

printf('\nAnalytically : \n')
printf('First Derivative = -588.5\nSecond Derivative = 83850\n')