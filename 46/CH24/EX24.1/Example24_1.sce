//Example 24.1
clc
syms K b z w;
Gz=K*(1-b)/(z-b)
//where b=exp(-T/tau)
//From Eq.(24.4)
z=w+1/w-1;
Gz=eval(Gz)
disp('=0',1+Gz,'1+G(z)=')
//which is equivalent to
disp('(K+1)*(1-b)*w+(1+b)-K(1-b)=0')
routh=[(K+1)*(1-b);(1+b)-K*(1-b)]
//b is always positive and less than one and K is positive
//The first element in the array is positive
//For stability, the Routh test requires that all elements of the first column be positive
//Therefore,
disp('>0',routh(2,1))
disp('K<(1+b)/(1-b)')

