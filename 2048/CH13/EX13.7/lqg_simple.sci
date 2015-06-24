// Simplified LQG control design, obtained by the solution of Eq. 13.53 on page 476.
// 13.7

// LQG controller simple design by method of Ahlen and Sternad
// function [R1,dR1,S,dS] = ...
// lqg_simple(A,dA,B,dB,C,dC,k,rho,V,dV,W,dW,F,dF)

function [R1,dR1,S,dS] = ...
lqg_simple(A,dA,B,dB,C,dC,k,rho,V,dV,W,dW,F,dF)
[r,b,db] = specfac(A,dA,B,dB,rho,V,dV,W,dW,F,dF);
[D,dD] = polmul(A,dA,F,dF);
[zk,dzk] = zpowk(k);
[N,dN] = polmul(zk,dzk,B,dB);
[RHS,dRHS] = polmul(C,dC,b,db);
[S,dS,R1,dR1] = xdync(N,dN,D,dD,RHS,dRHS);
endfunction;
