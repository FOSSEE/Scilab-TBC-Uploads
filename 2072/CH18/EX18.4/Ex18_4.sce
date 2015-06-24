//example18.4
//formula used x=inv(a)*b
clc
I=[1 -1 -1;-4 0 -9;0 -5 9]
V=[0;6;0]
X=inv(I)
a=X*V

disp("Current value I1,I2,I3 in amps=")
disp(a)
