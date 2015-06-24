//Example 9.9
//Particular Solution
//Page no. 293
clc;clear;close;

x=poly(0,'x')
n=2;
f=x^(n)-x^(n-1)-2*x^(n-2);
z=roots(f)
disp(z,f)
printf('\n\n')
printf('            n       n\nC.F. = ')
for i=1:n
    printf('c%i(%g)',i,z(i))
    if i~=n then
        printf(' + ')
    end
end
A=[-2,0,0;10,-2,0;9,-5,2];
B=[2;0;0];
C=inv(A)*B;
printf('\n\n\t   2\nP.I = (%g)n+(%g)n+(%g)',C(1),C(2),C(3))