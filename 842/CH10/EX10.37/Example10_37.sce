//clear//
//Example 10.37:To find output response of an LTI System
syms n z;
alpha = 8; //input constant
beta_b = 1; //initial condition y[-1] = 1
Y1 = -((3*beta_b*z)/(z+3))
Y2 = (alpha*z^2/((z+3)*(z-1)))
F1 = Y1*(z^(n-1))*(z+3);
y1 = limit(F1,z,-3);
F2 = Y2*(z^(n-1))*(z+3);
y2 = limit(F2,z,-3);
F3 = Y2*(z^(n-1))*(z-1);
y3 = limit(F3,z,1);
disp((y1+y2+y3)*'u(n)','y[n]=')
//Result
//y[n] =  (2-(-3)^(n+1))*u(n) 
