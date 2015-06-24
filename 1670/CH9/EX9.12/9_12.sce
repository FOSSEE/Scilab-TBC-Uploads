//Example 9.12
//Particular Solution
//Page no. 295
clc;clear;close;

x=poly(0,'x')
n=2;s=['+','-'];
f=x^(n)-4*x^(n-1)+5*x^(n-2);
z=roots(f)
disp(z,f)
printf('\n\n')
printf('                n           n\nC.F. = ')
for i=1:n
    printf('c%i(%g %s i)',i,z(i),s(i))
    if i~=n then
        printf(' + ')
    end
end
C=1;
printf('\n\n\t   \nP.I = %g',C)