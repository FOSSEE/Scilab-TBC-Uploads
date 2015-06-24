//Example 9.8
//Recurrence formula
//Page no. 292
clc;clear;close;

x=poly(0,'x')
n=2;
f=x^(n)-5*x^(n-1)+6*x^(n-2);
z=roots(f)
disp(z,f)
printf('\n\n')
printf('            n       n\nf(n) = ')
for i=1:n
    printf('c%i(%g)',i,z(i))
    if i~=n then
        printf(' + ')
    end
end