//Eg-2.3
//pg-53

clear
clc
close()

a=1.234;
b=.0005678;
x=nearfloat("succ",a+b);
y=double(a+b);

printf('The value of sum of two numbers using float data type is ')
disp(x)
printf('and the one using the double precision is \n%f\n',y)
