//Example No. 6_03
//Evaluating Polynomial using Horner's rule
//Pg No. 
clear ; close ; clc ;

//Coefficients of x terms in the increasing order of power
A = [ 6 ; 1 ; -4 ; 1];
x = 2
[n,c] = size(A) ;
p(n) = A(n)
disp(p(n), 'p(4) = ')
for i = 1:n-1
    p(n-i) = p(n-i+1)*x + A(n-i)
    printf('\n p(%i)= %i\n',n-i,p(n-i))
end
mprintf('\n f(%i) = p(1) = %i',x,p(1))