//ques9
clc
disp('finding the fourier series of given function');
syms  x l

s=0;
n=input('enter the no of terms upto each of sin or cos terms in the expansion : ');
for i=1:n
//  ai=1/l*integ(exp(-x)*cos(i*%pi*x/l),x,-l,l);
  bi=integ(x*sin(i*%pi*x/2),x,0,2);
  s=s+float(bi)*sin(i*%pi*x/2);
end
disp(float(s));

