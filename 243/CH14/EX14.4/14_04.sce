//Example No. 14_04
//Fadeev - Leverrier method
//Pg No. 474
clear ; close ; clc ;

A = [ -1 0 0 ; 1 -2 3 ; 0 2 -3 ]
[r,c] = size(A)
A1 = A
p(1) = trace(A1)
for i = 2:r
    A1 = A*( A1 - p(i-1)*eye())
    p(i) = trace(A1)/i
    mprintf('\nA%i = ',i)
    disp(A1)
    mprintf('\np%i = %f\n',i,p(i))
end
x = poly(0,'x');
p = p($:-1:1)
polynomial = poly([-p ; 1],'x','coeff')
disp(polynomial,'Charateristic polynomial is')