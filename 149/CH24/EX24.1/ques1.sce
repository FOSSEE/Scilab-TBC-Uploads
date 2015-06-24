clc
clear
x=poly(0,'x');
p=x^3-4*x-9
disp("Finding roots of this equation by bisection method");
disp('f(2) is -ve and f(3) is +ve so a root lies between 2 and 3');
l=2;
m=3;
function y=f(x)
  y=x^3-4*x-9;
endfunction
for i=1:4
    k=1/2*(l+m);
if(f(k)<0)
    l=k;
else 
  m=k; 
  end 
end
disp(k)
