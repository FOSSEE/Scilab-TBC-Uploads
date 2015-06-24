//ques5
clc
disp('Solution using Eulers Method ');
disp x y;
n=input('Input the number of iteration :-');
x=0;
y=1;
for i=1:n
  
y1=x+y;
y=y+0.1*y1;
x=x+0.1;
end
disp('The value of y is :-');
disp(y);