//Example 9.4
//Recurrence formula
//Page no. 291
clc;clear;close;

x=poly(0,'x')
n=3;
f=x^(n)-2*x^(n-1)-x^(n-2)+2;
z=roots(f)
disp(z,f)
printf('\n\n')
printf('      n       n       n\n')
for i=1:n
    printf('c%i(%g)',i,z(i))
    if i~=n then
        printf(' + ')
    end
end