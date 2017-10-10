clc
T1 = 200 // Initial temperature of system in K
T2 = 100 // Final temperature of system in K
A = 0.042 // Constant
Q1 = integrate('A*T^2','T',T1,T2) 
S =  integrate('A*T^2/T','T',T1,T2) 
W = poly(0,'W') 
Z = (-Q1-W)/T2 + S  // Polynomial to be solved for W
// Bisection method to solve for the Work
function [x] =Work(a,b,f),
  N = 100 
  eps = 1e-5 
  if((f(a)*f(b))>0) then
    error('no root possible f(a)*f(b)>0') 
    abort 
  end 
  if(abs(f(a))<eps) then
    error('solution at a') 
    abort 
  end
  if(abs(f(b))<eps) then
    error('solution at b') 
    abort 
  end
  while(N>0)
    c = (a+b)/2
    if(abs(f(c))<eps) then
      x = c  
      x 
      return 
    end 
    if((f(a)*f(c))<0 ) then
      b = c  
    else
      a = c  
    end
    N = N-1 
  end
  error('no convergence') 
  abort 
endfunction
deff('[y]=p(W)',['y = 350-0.01*W '])
W =Work(34000,36000,p) 
printf("\n Example 7.6")
printf("\n The maximum work that can be recovered is %dkJ", W/1000 )
