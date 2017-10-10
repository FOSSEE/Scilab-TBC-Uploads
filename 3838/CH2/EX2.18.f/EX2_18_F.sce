//Example 2.18.F
clc;
P=integrate('(exp(-t)*sin(t))','t',0,100)
disp(P)
disp('AS THE INTEGRATION PRODUCT IS CONSTANT HENCE THE SYSTEM IS STABLE');
