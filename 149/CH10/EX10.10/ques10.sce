//ques10
clc
disp('finding the fourier series of given function');
syms  x 
ao=2/2*(integ(x,x,0,2));
s=ao/2;
n=input('enter the no of terms upto each of sin or cos terms in the expansion : ');
for i=1:n
  ai=2/2*(integ(x*cos(i*%pi*x/2),x,0,2));
  //bi=1/%pi*(integ(-1*%pi*x^0*sin(i*x),x,-1*%pi,0)+integ(x*sin(i*x),x,0,%pi));
  s=s+float(ai)*cos(i*%pi*x/2);
end
disp(float(s));
