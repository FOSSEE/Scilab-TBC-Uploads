//Example 9.13
//Particular Solution
//Page no. 295
clc;clear;close;

x=poly(0,'x')
n=2;
f=x^(n)-7*x^(n-1)+10*x^(n-2);
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
C=-6;
printf('\n\n\t   n\t   \nP.I = %g(4)',C)