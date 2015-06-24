L = 25 ; // Length of coloum in ft
P1 = 320 ; // Load in K
P2 = 40 ; // Load in K
E = 30000 ; // Modulus of elasticity of steel in Ksi
P = 360 ; // Euivalent load
e = 1.5 ; // Ecentricity of compressive load
A = 24.1 ; // Area of the Cross section
r = 6.05 ; // in inch
c = 7.155 ; // in inch
sy = 42 ;// Yeild stress of steel in Ksi
smax = (P/A)*(1+(((e*c)/r^2)*sec((L/(2*r))*sqrt(P/(E*A))))); // Maximum compressive stress
disp("ksi",smax,"The Maximum compressive stress in the column ")
// Bisection method method to solve for yeilding
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

deff('[y]=p(x)',['y = x + (0.2939*x*sec(0.02916*sqrt(x))) - 1012 '])
x = stress(710,750,p);
Py = x ; // Yeilding load in K
n = Py/P; // Factor of safety against yeilding
disp(n,"The factor of safety against yeilding is")


    
    
 