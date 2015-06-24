//ques 61
clc
disp('to find the assymptote of given curve ');
syms x y
f=x^2*y^2-x^2*y-x*y^2+x+y+1;
//a=degrees(f,x);
f1=coeffs(f,x,2);
disp('assymptotes parallel to x-xis is given by f1=0 where f1 is :');
disp(factor(f1));
f2=coeffs(f,y,2);
disp('assymptotes parallel to y-axis is given by f2=0 and f2 is :');
disp(factor(f2));
 