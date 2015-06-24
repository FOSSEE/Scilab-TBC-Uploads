//ques8
clc
disp('finding the fourier series of given function');
syms  x 
ao=2/%pi*(integ((1-2*x/%pi),x,0,%pi));
s=ao/2;
n=input('enter the no of terms upto each of sin or cos terms in the expansion : ');
for i=1:n
  ai=2/%pi*(integ((1-2*x/%pi)*cos(i*x),x,0,%pi));
  //bi=1/%pi*(integ(-1*%pi*x^0*sin(i*x),x,-1*%pi,0)+integ(x*sin(i*x),x,0,%pi));
  s=s+float(ai)*cos(i*x);
end
disp(float(s));
