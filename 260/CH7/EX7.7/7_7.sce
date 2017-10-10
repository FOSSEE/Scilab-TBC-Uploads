//Eg-7.7
//pg-346

clear
clc
close()

x0 = [1 2 3 4 5];
x1 = [0.11 0.25 0.37 0.42 0.55];
y = [8.3 13.7 22.5 27.9 34.4];

//Using A in the place of greek alphabet 'alpha'
//Using equations [34],[35] to get the elements of the coefficient matrix and the components on the right-hand side of y = A + b1*x0 + b2*x1;

//Using S for summation    eg: Sx02y => summation(x0^2*y)

m = length(y);
n = 2;    //since there are only 2 variables

Sx0 = sum(x0);

Sx02 = sum(x0.^2);

Sx1 = sum(x1);

Sx12 = sum(x1.^2);

Sx0x1 = sum(x0.*x1);

Sy = sum(y);

Sx0y = sum(x0.*y);

Sx1y = sum(x1.*y);



a(1,1) = Sx02 - Sx0^2/m;
a(1,2) = Sx0x1 - Sx0*Sx1/m;
a(2,1) = a(1,2);
a(2,2) = Sx12 - Sx1^2/m;

c(1,1) = Sx0y - Sx0*Sy/m;
c(2,1) = Sx1y - Sx1*Sy/m;

b = inv(a)*c;

//Using equation [37] to compute the coefficient A

A = (Sy - (b(1)*Sx0 + b(2)*Sx1))/m;

printf('\nThe lease square polynomial of second order is, thus \n    y = %f + (%f)*x0 + (%f)*x1\n\n',A,b(1),b(2))

printf('Note: The small error compared to the text-book is because of the calculation mistake in the text-book\n')