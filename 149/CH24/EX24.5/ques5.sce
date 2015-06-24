//ques 5
disp(' To find the roots of f(x)=3x-cos(x)-1 by newtons method ');
disp('f(0)=-ve and f(1) is +ve so a root lies between 0 and 1');
l=0;
m=1;
function y=f(x)
  y=3*x-cos(x)-1;
endfunction
x0=0.6;
disp('let us take x0=0.6 as the root is closer to 1');
disp("Root is given by r=x0-f(xn)/der(f(xn)) ");
disp('approximated root in each steps are');
for i=1:3
  k=x0-f(x0)/derivative(f,x0);
  disp(k);
  x0=k;
end
