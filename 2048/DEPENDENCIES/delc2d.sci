// Discretizing a tf with delay
// Exact solution
// Applicable for a 1st order system

// Ref.: pg.287,Digital Control,Prof.Kannan Moudgalya

// D: Delay
// TF:  e^(-Ds)       OR       e^(-Ds)
//    ------------          ------------  (gen.)
//     tau*s + 1              tau*s + a            

//D = kTs + D' (gen.) 
// G: TF with delay component
// G1: TF with zero delay 
// Required because G cannot be directly used in Scilab
// Coefficients are returned for ascending powers of z^-1

function [B,A,k1] = delc2d(G,G1,Ts)
D = G.iodelay;
d = coeff(G1('den'));
  if d(1) == 1
  tau = d(2);
  mu = 1;
  else
  tau = d(2)/d(1);
  mu = 1/d(1);
  end;
  
k = floor(D/Ts);
Dpri = D - k*Ts;
Dis = ((%z*(1 - (exp(-(Ts - Dpri)/tau)) ) )+ (exp(-(Ts - Dpri)/tau) - exp(-Ts/tau) ))/ ((%z^(k+1))*(%z - exp(-Ts/tau))) 
Dis1 = Dis*mu;
disp('Warning: Exact discretization of first order system only');
k1 = degree(Dis1('den')) - degree(Dis1('num'));
B = coeff(Dis1('num'));
A = coeff(Dis1('den'));
B = flip(B);
A = flip(A);
endfunction;









