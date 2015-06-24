//Example 4.1, Page 72
clc;
p1=poly([1, -3, 1], 'x', 'c')//Polynomial equation
disp('Part a')
disp('roots of the equation when slip at max torque')
x=roots(p1)
disp(x)


p2=poly([0.146, -1.719, 1], 'x', 'c')//polynomial equation in scilab function
y=roots(p2)
disp('Part b')
disp('roots of the equation when slip at max load')
disp(y)