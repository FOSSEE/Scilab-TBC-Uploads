//ques6
syms  c1 c2 c3 n
disp('For Fibonacci Series yn2=yn1+yn0');
disp('so Cumulative function is given by E^2-E-1    =0 ');
E=poly(0,'E');
f=E^2-E-1;
r=roots(f);
disp(r);
disp('There for the complete solution is :');
un=(c1)*(r(1))^n+c2*(r(2))^n;
disp('un=');
disp(un);
disp('Now puttting n=1, y=0 and n=2 , y=1 we get');
disp('c1=(5-sqrt(5))/10  c2=(5+sqrt(5))/10 ');
c1=(5-sqrt(5))/10;
c2=(5+sqrt(5))/10;
un=eval(un);
disp(un);




