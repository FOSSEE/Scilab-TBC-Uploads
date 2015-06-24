//Example 12.1
//Linear Interpolation Technique
//Page no. 372
clc;close;clear;

printf('x:    ')
f=[1,4,9,16,25];
for i=1:5
    printf('%i\t',i)
end
printf('\nf(x):  ')
for i=1:5
    printf('%i\t',f(i))
end
x=2.5;
x1=2;x2=3;printf('\n\nfor (2,4) and (3,9)')
f(2.5)=f(x1)+(f(x2)-f(x1))*(x-x1)/(x2-x1)
printf('\nf(2.5) = %.1f',f(2.5))

x=2.5;
x1=2;x2=4;printf('\n\nfor (2,4) and (4,16)')
f(2.5)=f(x1)+(f(x2)-f(x1))*(x-x1)/(x2-x1)
printf('\nf(2.5) = %.1f',f(2.5))

x=2.5;
x1=1;x2=3;printf('\n\nfor (1,1) and (3,9)')
f(2.5)=f(x1)+(f(x2)-f(x1))*(x-x1)/(x2-x1)
printf('\nf(2.5) = %.1f',f(2.5))

printf('\n\nExact value = %.2f',2.5^2)