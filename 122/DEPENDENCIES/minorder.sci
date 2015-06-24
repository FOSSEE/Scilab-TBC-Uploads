
// Determine Gains and transfer function for minimal order observer

function G = transferf(A,B,C,D)
  H = syslin('c',A,B,C,D);
  G = clean(ss2tf(H));
endfunction

function [K,Ke,Go,ch,AA,Ahat,Bhat,Chat,Dhat,Fhat] = minorder(A,B,P,Q)
  s = %s;
  K = ppol(A,B,P);
  Ka = K(1);
  Kb = K(2:$);

  Aaa = A(1,1);
  Aab = A(1,2:$);
  Aba = A(2:$,1);
  Abb = A(2:$,2:$);
  Ba = B(1,1);
  Bb = B(2:$,1);
  
  Ke = ppol(Abb',Aab',Q)'
  
  n = length(Kb);
  Ahat = Abb - Ke*Aab;
  Bhat = Ahat*Ke + Aba - Ke*Aaa;
  Chat = [zeros(1,n); eye(n,n)];
  Dhat = [1; Ke];
  Fhat = Bb - Ke*Ba;
  Atld = Ahat - Fhat*Kb;
  Btld = Bhat - Fhat*(Ka + Kb*Ke);
  Ctld = -Kb;
  Dtld = -(Ka + Kb*Ke);

  Go = transferf(Atld,Btld,-Ctld,-Dtld);
ch = det(s*eye(n+1,n+1) - A + B*K) * det(s*eye(n,n) - Abb + Ke*Aab);
AA = [A - B*K , B*Kb; zeros(n,n+1) , Abb - Ke*Aab];

endfunction
