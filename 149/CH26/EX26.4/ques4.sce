//ques4
syms  c1 c2 c3 n
disp('Cumulative function is given by E^2-2*E+1    =0 ');
E=poly(0,'E');
f=E^2-2*E+1;
r=roots(f);
disp(r);
disp('There for the complete solution is :');
un=(c1+c2*n)*(r(1))^n;
disp('un=');
disp(un);

