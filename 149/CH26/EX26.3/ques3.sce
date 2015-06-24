//ques3
syms  c1 c2 c3
disp('Cumulative function is given by E^3-2*E^2-5*E+6    =0 ');
E=poly(0,'E');
f=E^3-2*E^2-5*E+6;
r=roots(f);
disp(r);
disp('There for the complete solution is :');
un=c1*(r(1))^n+c2*(r(2))^n+c3*(r(3))^n;
disp('un=');
disp(un);

