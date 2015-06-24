//ques21
disp('Taylor series');
disp('f(x+h)=f(x)+hf1(x)+h^2/2!*f2(x)+h^3/3!*f3(x)+......');
disp('To finf the taylor expansion of tan-1(x+h)')
syms x h

  y=atan(x);
  n=input('enter the number of expression in seris : ');
  
t=y;

for i=2:n
  y1=diff(y,'x',i-1);
   t=t+h^(i-1)*(y1)/factorial(i-1);
end
disp(t)

