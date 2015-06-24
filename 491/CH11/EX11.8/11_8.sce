Fc = 11e06 ; // Compressive desing stress in Pa
E = 13e09 ; // Modulus of elasticity in Pa
// Part (a)
Kce = 0.3 ; 
c = 0.8; 
A = 0.12*0.16 ; // Area of cross section
Sl = 1.8/0.12 ; // Slenderness ratio
fi = (Kce*E)/(Fc*Sl^2) ; // ratio of stresses
Cp = ((1+fi)/(2*c)) - sqrt(((1+fi)/(2*c))^2-(fi/c)); // Coloumn stability factor 
Pa = Fc*Cp*A ; // Allowable Axial load
disp("N",Pa,"The allowable axial load is")
// Part (b)
P = 100000; // Allowable Axial load
Cp_ = P/(Fc*A) ; // Coloumn stability factor
// Bisection method method to solve for fi
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

deff('[y]=p(x)',['y = ((1+x)/(2*c)) - sqrt(((1+x)/(2*c))^2-(x/c)) - Cp_ '])
x = stress(0.1,1,p); 
fi_ = x 
d_ = 0.12 ; // Diameter in m
L_max = d_*sqrt((Kce*E)/(fi_*Fc)); // Maximum length in m
disp("m",L_max,"The minimum allowable length is")
// Part (c)
b1 = [0.130 0.131 0.132]; // Two choices
Sl1 = 2.6./b1 // slenderness ratio
fi1 =  (Kce*E)./(Fc*Sl1^2)  // Ratio
Cp1 = ((1+fi1)/(2*c)) - sqrt(((1+fi1)/(2*c)).^2-(fi1/c)); // Coloumn stability factor 
P1 = 11000.*Cp1.*b1^2 ;  // Allowable atress 
Pa1 = 125; // Given allowable stress
// Does not require display of result analysis has been shown for b = 0.131
 






