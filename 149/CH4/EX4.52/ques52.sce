//error
//ques52
disp('To find the maxima and minima of given function put f1(x)=0');
syms x
//x=poly(0,'x');
f=3*x^4-2*x^3-6*x^2+6*x+1;
k=diff(f,x);
x=poly(0,'x');
k=eval(k);

