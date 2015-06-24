//Example No. 9_01
//Gauss-Legendre Three-point formula
//Pg No. 400
clear ;close ;clc ;

a = 2 ;
b = 4 ;
A = (b-a)/2 
B = (b+a)/2
C = (b-a)/2
deff('G = g(z)','G = (A*z + B)^4 + 1')
w1 = 0.55556 ;
w2 = 0.88889 ;
w3 = 0.55556 ;
z1 = -0.77460;
z2 = 0 ;
z3 = 0.77460 ;
Ig = C*( w1*g(z1) + w2*g(z2) + w3*g(z3) ) 
printf('g(z) = (%f*z + %f)^4 + 1 \n C = %f \n Ig = %f \n',A,B,C,Ig)