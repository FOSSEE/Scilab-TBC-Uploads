//Eg-7.5
//pg-338

clear
clc

x = [0 1 2 3 4];
y = [1 2 9 22 41];

m = length(x);
n = 2;    //since we have 2 variables

//Using S for summation    eg: Sx2y => summation(x^2*y)

Sx = sum(x);

Sx2 = sum(x.^2);

Sx3 = sum(x.^3);

Sx4 = sum(x.^4);

Sy = sum(y);

Sxy = sum(x.*y);

Sx2y = sum((x.^2).*y);

a(1,1) = Sx2 - (Sx)^2/m;
a(1,2) = Sx3 - Sx*Sx2/m;
a(2,1) = Sx3 - Sx2*Sx/m;
a(2,2) = Sx4 - Sx2^2/m;

c(1,1) = Sxy - Sx*Sy/m;
c(2,1) = Sx2y - Sx2*Sy/m;

printf('\nA =')
disp(a)
printf('c =')
disp(c)

b = inv(a)*c;

printf('Solving the matrix equation  Ab = c using matrix inversion gives\n\nb=')
disp(b)

//The coefficient 'alpha' can be obtained from equaiton 'alpha' = Sy/m - (b(1)*Sx + b(2)*Sx2)/m ;

alpha = Sy/m - (b(1)*Sx + b(2)*Sx2)/m ;

printf('\nThe coefficent alpha = %f\n',alpha)

printf('\nThe lease square polynomial of second order is, thus \n    y = %f + (%f)*x + (%f)*x^2\n\n',alpha,b(1),b(2))
