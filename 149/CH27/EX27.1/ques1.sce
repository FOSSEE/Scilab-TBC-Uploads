//ques1
syms x 
disp('solution through picards method');
n=input('The no of iterations required');
disp('y(0)=1 and y(x)=x+y');
yo=1;
yn=1;
for i = 1:n
  yn=yo+integ(yn+x,x,0,x);
end
disp('y=');
disp(yn);