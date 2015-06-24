//ques7
clc
disp('Solution using Eulers Method ');
disp x y;
n=input('Input the number of iteration :-');
x=0.2;
m=0.301;
y=2;
yn=2;
y1=log10(2);
k=0.301;
for i=1:n

yn=y;


  for i=1:4
  m=(k+y1)/2;
  yn=y+0.2*m;
  y1=log10(yn+x);
  disp(yn); 
end
disp('-----------------------');
y=yn;
m=y1;
  yn=yn+0.2*m;
  disp(yn); 
  x=x+0.2;
  yn=y;
  k=m;
end
disp('The value of y is :-');
disp(y);