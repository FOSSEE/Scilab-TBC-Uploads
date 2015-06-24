//ques4
clc
disp('finding the fourier series of given function');
syms  x l
ao=1/l*integ(exp(-1*x),x,-l,l);
s=ao/2
n=input('enter the no of terms upto each of sin or cos terms in the expansion : ');
for i=1:n
  ai=1/l*integ(exp(-x)*cos(i*%pi*x/l),x,-l,l);
  bi=1/l*integ(exp(-x)*sin(i*%pi*x/l),x,-l,l);
  s=s+float(ai)*cos(i*%pi*x/l)+float(bi)*sin(i*%pi*x/l);
end
disp(float(s));
