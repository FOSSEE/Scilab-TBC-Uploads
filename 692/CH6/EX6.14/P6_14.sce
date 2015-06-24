//EXAMPLE 6.14
//Inverse Z-transform
clear;
clc;
z = %z;
num=z*(z+2);
den=(z-0.2)*(z+0.6);
H=num/den;
elts=factors(den);
disp(elts);
//solving Partial Fractions, we get:
Hz = 2.75/(1-(0.2)/z) - 1.75/(1+(0.6)/z);
disp(Hz);
//disp(h = 2.75*(0.2^n) - 1.75*(0.6^n)*u(n));
h1= ldiv(2.75*z,(z-(0.2)),10)
disp(h1/2.75,'h1 = ');
h1= ldiv(1.75*z,(z+(0.6)),10)
disp(h1/1.75,'h2 = ');
disp('the inverse z-transform is :')
disp('h = 2.75*(0.2^n)*u(n) - 1.75*(-0.6^n)*u(n)')