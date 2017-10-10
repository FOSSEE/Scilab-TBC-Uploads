//Example 2.4.a
//Energy of the signal x(t)=(exp(-2*a*t)).u(t)
clc;
a=2;
E=integrate('exp(-a*t)^(2)','t',0,100)//Energy of the given signal
disp(E)
disp('AS ENERGY OF THE GIVEN SIGNAL IS FINITE HENCE THE GIVEN SIGNAL IS ENERGY SIGNAL');
