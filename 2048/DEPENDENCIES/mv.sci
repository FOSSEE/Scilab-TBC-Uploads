// Minimum variance control law design, given by Eq. 11.40 on page 413. 
// 11.5

// function [S,dS,R,dR] = mv(A,dA,B,dB,C,dC,k,int)
// implements the minimum variance controller
// if int>=1, integrated noise is assumed; otherwise,
// it is not integrated noise

function [S,dS,R,dR] = mv(A,dA,B,dB,C,dC,k,int1)
zk = zeros(1,k+1); zk(k+1) = 1;
if int1>=1, [A,dA] = polmul([1 -1],1,A,dA); end
[Fk,dFk,Ek,dEk] = xdync(zk,k,A,dA,C,dC);

[Gk,dGk] = polmul(Ek,dEk,B,dB);
S = Fk; dS = dFk; R = Gk; dR = dGk;
endfunction;
