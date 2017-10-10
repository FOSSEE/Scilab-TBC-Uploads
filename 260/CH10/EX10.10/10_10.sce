//Eg-10.10
//pg-449

clear
clc

x = [1 2 4];
y = [5 8.6 3.1];

//Refer to pg-448 for these conditions
//condition 1 gives
//    4a1 + 2b1 + c1 = 8.6
//condition 2 gives
//    16a1 + 4b1+c1 = 3.1
//condition 3 gives
//    4a0 + b0 = 4a1 + b1
//condition 4 gives
//    a0 = 0

A = [2 1 0 0 0;0 0 4 2 1;1 1 0 0 0;0 0 16 4 1;1 0 -4 -1 0];
B = [8.6;8.6;5;3.1;0];

//The above conditions repesented in matrix equation form Ax = B can be solved for x as
//x = [b0;c0;a1;b1;c1]

x = inv(A)*B;

b0 = x(1);
c0 = x(2);
a1 = x(3);
b1 = x(4);
c1 = x(5);

x = poly(0,'x');

printf('The expressions for the splines are \n')
p = b0*x + c0;
q = a1*x^2 + b1*x + c1;

disp(p,q)

x1 = 1:0.01:2;
x2 = 2:0.01:4;

y1 = horner(p,x1);
y2 = horner(q,x2);

plot(x1,y1,x2,y2)

xlabel('x')
ylabel('y')

legend('Spline 1','Spline 2')