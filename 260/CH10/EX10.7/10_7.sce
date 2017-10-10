//Eg-10.7
//pg-442

clear
clc
close()

x = [0;2;5];
y = [0;2.5;6.9];

exec lagrange.sci

p = lagrange(x,y,2)

printf('The polynomial is \n')
disp(p)
k = horner(p,3)

printf('\nThe value of the polynomial at x = 3 is %f\n',k)