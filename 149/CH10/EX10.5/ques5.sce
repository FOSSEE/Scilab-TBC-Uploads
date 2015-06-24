//ques5
clc
disp('finding the fourier series of given function');
syms  x l
s=0;
n=input('enter the no of terms upto each of sin terms in the expansion : ');
for i=1:n
  
   bi=2/%pi*integ(x*sin(i*x),x,0,%pi);
  s=s+float(bi)*sin(i*x);
end
disp(float(s));
