//error no output
//ques6
clc
disp('finding the fourier series of given function');
syms  x l
ao=2/l*integ(x^2,x,0,l);
s=float(ao)/2;
n=input('enter the no of terms upto each of sin or cos terms in the expansion : ');
for i=1:n
  ai=2/l*integ(x^2*cos(i*%pi*x/l),x,0,l);
  //bi=1/l*integ(exp(-x)*sin(i*x),x,-l,l);
  s=s+float(ai)*cos(i*%pi*x/l);
  end
disp(float(s));
