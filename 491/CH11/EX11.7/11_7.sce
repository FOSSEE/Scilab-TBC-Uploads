L = 16 ; // Effective length in inch
P = 5 ; // axial load in K
// Bisection method for solvong the quaderatic
function [x] = stress(a,b,f)
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

deff('[y]=p(x)',['y = 30.7*x^2 - 11.49*x -17.69 '])
x = stress(0.9,1.1,p);
d = x; // Diameter in inch
sl = 49.97/d ; // Slenderness ration L/r
dmin = d ; // Minimum diameter

// The above equation comes from solving the following equationd for d
// S_allow = 13.7 - 0.23*(L/r) = P/ A ;
// A = (%pi/4)*(d^2-(d-2t)^2)
// I = (%pi/64)*(d^4-(d-2t)^4)
// r = sqrt(I/A)
disp("inch",dmin,"The minimum required outer diameter of the tube is")










