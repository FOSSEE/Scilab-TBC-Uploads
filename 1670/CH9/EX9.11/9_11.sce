//Example 9.11
//Particular Solution
//Page no. 294
clc;clear;close;

x=poly(0,'x')
n=2;
f=x^(n)-0*x^(n-1)-4*x^(n-2);
z=roots(f)
disp(z,f)
printf('\n\n')
printf('            n       n\nC.F.  = ')
for i=1:n
    printf('c%i(%g)',i,z(i))
    if i~=n then
        printf(' + ')
    end
end
A=[-3,0,0;4,-3,0;4,2,-3];
B=[1;1;-1];
C=inv(A)*B;
printf('\n\n\t  \t  2\nP.I = (%g)n+(%g)n+(%g)',C(1),C(2),C(3))