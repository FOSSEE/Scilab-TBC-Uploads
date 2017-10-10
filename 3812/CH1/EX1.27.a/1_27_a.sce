//Example 1.27<a>
//Determine whether the following system is time invariant or not
clc;	
clear all;	
T =20;
s =2;
for n=1:T
x(n)=n;
y(n)=n*x(n);
end
IP=x(T-s);
OP=y(T-s);
if IP == OP then
disp('The given system is time invariant');
else
disp('The given system is time variant');
end
