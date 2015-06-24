//Engineering and Chemical Thermodynamics
//Example 2.15
//Page no :80

clear ; clc ;

//Given data
V1 = 350 ; //[m/s]
A = 3.355 ;
B = 0.575*10^-3 ;
D = -0.016*10^5 ;
Tin = 283 ; //[K]
MW = 29 * 10^-3 ; //[kg/mol]

ek = 1/2 * MW * V1**2 ;
//The co-efficients of T2 in the equation of degree 3 are
a = B/2 ;
b = A ;
c = -(Tin * A + Tin^2*B/2 - (D/Tin) + ek/8.314) ;
d=-D ; 

T2=poly(0,'T2');
P = d + c*T2 + b*T2^2 + a*T2^3 ;
M = roots(P);
disp(" Example: 2.15   Page no : 80") ;
disp( " The solutions are ")
disp(M);
disp("              But the outlet temp should be more than 283K(inlet temperature) .So we have to choose the most suitable solution .")

 