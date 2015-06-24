//example18.5
//prob
//formula used x=inv(a)*b
clc
I=[8 2 0;-3 2 0;1 1 -1]
V=[10;-12;0]
X=inv(I)
disp(X)
a=X*V

disp("Current value I1,I2,I3 in amps=")
disp(a)


