//ques7
clc
disp('Solution using Eulers Method ');
disp x y;
n=input('Input the number of iteration :-');
x=0.1;
m=1;
y=1;
yn=1;
y1=1;
k=1;
for i=1:n

yn=y;


  for i=1:4
  m=(k+y1)/2;
  yn=y+0.1*m;
  y1=(yn+x);
  disp(yn); 
end
disp('-----------------------');
y=yn;
m=y1;
  yn=yn+0.1*m;
  disp(yn); 
  x=x+0.1;
  yn=y;
  k=m;
end
disp('The value of y is :-');
disp(y);