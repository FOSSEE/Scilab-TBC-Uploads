//Example 2.18.a
clc;
P=integrate('(exp(-5*t))','t',0,100)
E=integrate('(exp(5*t))','t',-100,0)
disp(P+E)
disp('AS THE INTEGRATION PRODUCT IS CONSTANT HENCE THE SYSTEM IS STABLE');
