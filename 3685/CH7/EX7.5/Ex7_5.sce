clear
clc
T = poly(0,'T'); // T = Tf
Tf_ = 700-2*T; // Tf_ = Tf'
// Bisection method to solve for the polynomial

printf("\n Example 7.5")


function [x] = Temperature(a,b,f)
  N = 100;
  eps = 1e-5;
  if((f(a)*f(b))>0) then
    error('no root possible f(a)*f(b)>0');
    abort;
  end;
  if(abs(f(a))<eps) then
    error('solution at a');
    abort;
  end
  if(abs(f(b))<eps) then
    error('solution at b');
    abort;
  end
  while(N>0)
    c = (a+b)/2
    if(abs(f(c))<eps) then
      x = c ;
      x;
      return;
    end;
    if((f(a)*f(c))<0 ) then
      b = c ;
    else
      a = c ;
    end
    N = N-1;
  end
  error('no convergence');
  abort;
endfunction
deff('[y]=p(T)',['y = 2*T^3-700*T^2+9000000 '])
T = Temperature(100,200,p);

Tf_ = horner(Tf_,T);
printf("\n The final temperature of the body C is %d K",Tf_)
//The answers vary due to round off error

