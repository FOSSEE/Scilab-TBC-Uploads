clc
t0 = 37 // Stangnation temperature in degree Celsius
P = 40 // Duct static pressure in kPa
g = 1.4 // Heat capacity ratio
function [x] = speed(a,b,f)
  N = 100
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

deff('[y]=p(x)',['y = x^4 + (5*(x^2)) - 3.225 '])
x = speed(0.5,1,p);
T0 = t0+273;
M = x; // Mach number
g = 1.4; // gamma
R = 0.287;
T = T0/(1+((g-1)/2)*M^2);
c = sqrt(g*R*T*1000);
V = c*M;
P0 = P*((T0/T)^(g/(g-1)));

printf("\n Example 17.1\n")
printf("\n Mach number is %f ",M)
printf("\n Velocity is %f m/s",V)
printf("\n Stagnation pressure is %f kPa",P0)
//The answers vary due to round off error
