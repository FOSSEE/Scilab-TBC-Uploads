// General minimum variance controller design, as given by Eq. 11.66 on page 421 and Eq. 11.70 on page 422.
// 11.12

// function [Sc,dSc,Rc,dRc] = gmv(A,dA,B,dB,C,dC,k,rho,int)
// implements the generalized minimum variance controller
// if int>=1, integrated noise is assumed; otherwise,
// it is not integrated noise

function [Sc,dSc,R,dR] = gmv(A,dA,B,dB,C,dC,k,rho,int1)
zk = zeros(1,k+1); zk(k+1) = 1;
if int1>=1, [A,dA] = polmul([1 -1],1,A,dA); end
[Fk,dFk,Ek,dEk] = xdync(zk,k,A,dA,C,dC);
[Gk,dGk] = polmul(Ek,dEk,B,dB);
alpha0 = Gk(1)/C(1); 
Sc = alpha0 * Fk; dSc = dFk; 
[R,dR] = poladd(alpha0*Gk,dGk,rho*C,dC);
endfunction;
