//Example 2.18.C
clc;
P=integrate('(exp(-4*t))','t',0,100)
disp(P)
disp('AS THE INTEGRATION PRODUCT IS CONSTANT HENCE THE SYSTEM IS STABLE');
