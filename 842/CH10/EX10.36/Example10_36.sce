//clear//
//Example 10.36:To find output response of an LTI System
syms n z;
H = z/(z+3)
X = z/(z-1)
Y = X*H
F1 = Y*(z^(n-1))*(z-1);
y1 = limit(F1,z,1);
F2 = Y*(z^(n-1))*(z+3);
y2 = limit(F2,z,-3);
disp(y1*"u(n)"+y2*"u(n)",'y[n]=')
//Result
//y[n] = u(n)/4-(-3)^(n+1)*u(n)/4   
//Equivalent to = (1/4).u[n]-(3/4)(-3)^n.u[n]
