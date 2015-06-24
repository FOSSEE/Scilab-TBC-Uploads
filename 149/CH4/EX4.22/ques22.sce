//ques22
disp('Here we need to find find the limit of f(x) at x=0')
syms x
y=(x*%e^x-log(1+x))/x^2;
//disp('The limit at x=0 is : ');
//l=limit(y,x,0);
//disp(l)
f=1;
while f==1
yn=x*%e^x-log(1+x);
yd=x^2;
yn1=diff(yn,'x',1);
yd1=diff(yd,'x',1);
x=0;
a=eval(yn1);
b=eval(yd1);
if a==b then
  yn=yn1;
  yd=yd1;
else
  f=0;

end
end
h=a/b;
disp(h);
  
