//ques3
clc
disp('finding the fourier series of given function');
syms  x 
ao=0;
s=ao;
n=input('enter the no of terms upto each of sin or cos terms in the expansion : ');
for i=1:n
    bi=2/1*(integ((1/4-x)*sin(i*%pi*x),x,0,1/2)+integ((x-3/4)*sin(i*%pi*x),x,1/2,1));
  s=s+float(bi)*sin(i*%pi*x);
end
disp(float(s));
