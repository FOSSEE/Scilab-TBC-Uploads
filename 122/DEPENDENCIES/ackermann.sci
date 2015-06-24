// Compute the feedback gain matrix using ackermanns formula

function [K ,phiA] = ackermann(A,B,P)
  // construct charecteristic equation
  phi = poly(P,'x');
  c = coeff(phi);
  phiA = eye(A)*c(1);
  powA = eye(A);
  for i=2:length(c)
        powA = powA * A;
        phiA = phiA + powA * c(i);
  end
  K = [zeros(1,length(B)- 1), 1] * inv(cont_mat(A,B)) * phiA;
endfunction