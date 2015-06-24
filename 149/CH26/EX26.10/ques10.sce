//ques10
clc
syms  c1 c2 c3 n
disp('Cumulative function is given by E^2-4    =0 ');
E=poly(0,'E');
f=E^2-4;
r=roots(f);
disp(r);
disp('There for the complete solution is = cf + pi');
cf=(c1+c2*n)*r(1)^n;
disp('CF=');
disp(cf);
//particular integral calulation manually
disp('PI = 1/(E^2-4)[n^2+n-1]');
disp('We get PI=-n^2/3-7/9*n-17/27');
pi=-n^2/3-7/9*n-17/27;
un=cf+pi;
disp('un=');
disp(un);


