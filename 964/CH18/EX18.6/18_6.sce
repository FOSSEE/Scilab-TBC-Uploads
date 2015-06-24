//clc()
x = 2;
x0 = 1;
m = 0;
x1 = 4;
n = 1.386294;
x2 = 6;
p = 1.791759;
f1 = (x - x1)*m/((x0 - x)) + (x- x0) * n/(x1 - x0);
disp(f1,"first order polynomial f1(2) = ")
f2 = (x - x1)*(x - x2)*m/((x0 - x1)*(x0 - x2)) + (x - x0)*(x - x2)*n/((x1-x0)*(x1-x2)) + (x - x0)*(x - x1)*p/((x2 - x0)*(x2 - x1));
disp(f2,"second order polynomial f2(2) = ")
