//error
//ques2
syms x 
disp('solution through picards method');
n=input('The no of iterations required');
disp('y(0)=1 and y(x)=x+y');
yo=1;
y=1;
for i = 1:n
 
  f=(y-x)/(y+x);
  y=yo+integ(f,x,0,x);
end
disp('y=');
x=0.1;
disp(eval(y));