//Example 2.18.D
clc;
P=integrate('(t*exp(-3*t))','t',0,100)
disp(P)
disp('AS THE INTEGRATION PRODUCT IS CONSTANT HENCE THE SYSTEM IS STABLE');
