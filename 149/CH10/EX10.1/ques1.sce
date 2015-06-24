//ques1
clc
disp('finding the fourier series of given function');
syms  x 
ao=1/%pi*integ(exp(-1*x),x,0,2*%pi);
s=ao/2;
n=input('enter the no of terms upto each of sin or cos terms in the expansion : ');
for i=1:n
  ai=1/%pi*integ(exp(-x)*cos(i*x),x,0,2*%pi);
  bi=1/%pi*integ(exp(-x)*sin(i*x),x,0,2*%pi);
  s=s+float(ai)*cos(i*x)+float(bi)*sin(i*x);
end
disp(float(s));
