//ques 7
clear
clc
disp('To find squareroot of 28 by newtons method let x=sqrt(28) ie x^2-28=0');
function y=f(x)
  y=x^2-28;
endfunction
disp(' To find the roots by newtons method ');
disp('f(5)=-ve and f(6) is +ve so a root lies between 5 and 6');
l=5;
m=6;
disp('let us take x0=5.5');
disp("Root is given by rn=xn-f(xn)/der(f(xn)) ");
disp('approximated root in each steps are');
x0=5.5;
for i=1:4
  k=x0-f(x0)/derivative(f,x0);
  disp(k);
  x0=k;
end