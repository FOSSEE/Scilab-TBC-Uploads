//clc()
x = [3,4.5,7,9];
fx = [2.5,1,2.5,0.5];
m1 = (fx(2) - fx(1))/(x(2) - x(1));
m2 = (fx(3) - fx(2))/(x(3) - x(2));
m3 = (fx(4) - fx(3))/(x(4) - x(3));
x1 = [3,4.5];
x2 = [4.5,7];
x3 = [7,9];
plot2d(x1,m1*x1+5.5);
plot2d(x2,m2*x2-1.7);
plot2d(x3,m3*x3+9.5);
xtitle("f(x) vs x","x","f(x)")
r = 5
z = m2*r -1.7;
disp(z,"The value at x = 5 is")
