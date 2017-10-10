//Eg-15.4
//pg-617

clear
clc

close()

//Using equation [21] in this problem

//Solving the equations analytically gives 3 equatinos in y11,y21,y31 which can be solved using matrix inversion.

printf('Using the equation [21] we get :\n')
x1 = inv([1.16 -0.08 0;-0.08 1.16 -0.08;0 -0.08 1.16])*[33;25;33];

printf(' y11 = %f\n y21 = %f\n y31 = %f\n',x1(1,1),x1(2,1),x1(3,1))

//Similarly solving for the elements in the column 2,3&4

x2 = inv([1.16 -0.08 0;-0.08 1.16 -0.08;0 -0.08 1.16])*[43.442;26.4406;43.4442];

printf(' y12 = %f\n y22 = %f\n y32 = %f\n',x2(1,1),x2(2,1),x2(3,1))

x3 = inv([1.16 -0.08 0;-0.08 1.16 -0.08;0 -0.08 1.16])*[51.3531;30.0152;51.3531];

printf(' y13 = %f\n y23 = %f\n y33 = %f\n',x3(1,1),x3(2,1),x3(3,1))

x4 = inv([1.16 -0.08 0;-0.08 1.16 -0.08;0 -0.08 1.16])*[57.6403;34.5618;57.6403];

printf(' y14 = %f\n y24 = %f\n y34 = %f\n',x4(1,1),x4(2,1),x4(3,1))

y = zeros(4,5)

y(1:4,1) = 100;
y(1:4,5) = 100;

y(1,2:4) = x1';
y(2,2:4) = x2';
y(3,2:4) = x3';
y(4,2:4) = x4';

printf('The values of y at the grid points are shown in the following table :\n')
disp(y)

printf('\nThe profiles of y by Crank-Nicolson method  is shown in the figure\n')

x = 0:0.25:1;

y1 = y(1,1:5);
y2 = y(2,1:5);
y3 = y(3,1:5);
y4 = y(4,1:5);


plot(x,y1,x,y2,x,y3,x,y4)
legend('t1','t2','t3','t4')
xlabel('x')
ylabel('y')
