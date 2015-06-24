//ques19
disp('Maclaurins series');
disp('f(x)=f(0)+xf1(0)+x^2/2!*f2(0)+x^3/3!*f3(0)+......');
syms x a b

  y=%e^(a*asin(b));
  n=input('enter the number of expression in seris : ');
  b=0;
t=eval(y);

for i=2:n
  y1=diff(y,'b',i-1);
   t=t+x^(i-1)*eval(y1)/factorial(i-1);
end
disp(t)

