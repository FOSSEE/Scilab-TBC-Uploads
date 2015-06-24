//ques11
clc
syms  c1 c2 c3 n
disp('Cumulative function is given by E^2-2*E+1    =0 ');
E=poly(0,'E');
f=E^2+2*E-1;
r=roots(f);
disp(r);
disp('There for the complete solution is = cf + pi');
cf=(c1+c2*n)*r(1)^n;
disp('CF=');
disp(cf);
//particular integral calulation manually
disp('PI = 1/(E-1)^2[n^2*2^n]');
disp('We get PI=2^n*(n^2-8*n+20');
pi=2^n*(n^2-8*n+20);
un=cf+pi;
disp('un=');
disp(un);


