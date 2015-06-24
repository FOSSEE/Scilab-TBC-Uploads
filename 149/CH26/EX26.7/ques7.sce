//ques4
syms  c1 c2 c3 n
disp('Cumulative function is given by E^2-4*E+3    =0 ');
E=poly(0,'E');
f=E^2-4*E+3;
r=roots(f);
disp(r);
disp('There for the complete solution is = cf + pi');
cf=c1*(r(1))^n+c2*r(2)^n;
disp('CF=');
disp(cf);
disp('PI = 1/(E^2-4E+3)[5^n]');
disp('put E=5');
disp('We get PI=5^n/8');
pi=5^n/8;
un=cf+pi;
disp('un=');
disp(un);


