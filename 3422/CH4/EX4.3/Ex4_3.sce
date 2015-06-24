//Example 4.1, Page 76
clc;
p1=poly([.0016, -0.0266, 0.04], 'x', 'c')//Polynomial equation
disp('Part a')
disp('roots of the equation that slip will run is')
x=roots(p1)
disp(x)