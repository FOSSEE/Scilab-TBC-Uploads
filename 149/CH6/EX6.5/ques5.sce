//error no internal error
//ques5
clc
disp('definite integral');
syms x m n
n=input('Enter n :');
m=input('Enter m : ');
g=(cos(x))^m*cos(n*x);
f=integ(g,x,0,%pi/2);
disp(float(f));
g2=(cos(x))^(m-1)*cos((n-1)*x);
f2=m/(m+n)*integ(g2,x,0,%pi/2);
disp(float(f2));
disp('Equal');


