h1 = 313.93;
h2 = 2676;
h3 = 419;
w1 = 4.2;
w = poly(0,'w') // w = w2
P = w1*h1 + w*h2 - h3*(4.2+w)
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

deff('[y]=p(w)',['y = - 441.294 + 2257*w '])
w = stress(0.1,0.2,p);
disp("Kg/h",w*3600,"The amount of heat that should be supplied is")



