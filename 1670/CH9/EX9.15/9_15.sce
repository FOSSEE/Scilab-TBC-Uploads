//Example 9.15
//Particular Solution
//Page no. 296
clc;clear;close;

x=poly(0,'x')
n=2;
f=x^(n)-1*x^(n-1)-2*x^(n-2);
z=roots(f)
disp(z,f)
printf('\n\n')
printf('            n        n\nC.F. = ')
for i=1:n
    printf('c%i(%g)',i,z(i))
    if i~=n then
        printf(' + ')
    end
end
A=[5/8,0;1/2,5/8];
B=[3;0]
C=inv(A)*B;
printf('\n\n\t \t    n\t   \nP.I = (%gn%g)(4)',C(1),C(2))