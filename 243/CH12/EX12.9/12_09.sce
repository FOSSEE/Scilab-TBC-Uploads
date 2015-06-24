//Example No. 12_09
//Gaussian two point formula
//Pg No. 398
clear ;close ;clc ;

a = -2 ;
b = 2 ;
deff('F = f(x)','F = exp(-x/2)')
A = (b-a)/2 
B = (a+b)/2
C = (b-a)/2
deff('G = g(z)','G = exp(-1*(A*z+B)/2)')
w1 = 1 ;
w2 = 1 ;
z1 = -1/sqrt(3)
z2 = 1/sqrt(3)
Ig = C*( w1*g(z1) + w2*g(z2) )
printf('g(z) = exp(-(%f*z + %f)/2) \n C = %f \n Ig = %f \n',A,B,C,Ig)