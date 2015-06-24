// Minimum variance control for nonminimum phase systems
// 11.9

// function [Sc,dSc,Rc,dRc] = mv_mv(A,dA,B,dB,C,dC,k,int)
// implements the minimum variance controller
// if int>=1, integrated noise is assumed; otherwise,
// it is not integrated noise

function [Sc,dSc,Rc,dRc] = mv_nm(A,dA,B,dB,C,dC,k,int1)
if int1>=1, [A,dA] = polmul([1 -1],1,A,dA); end
[zk,dzk] = zpowk(k);
[Bzk,dBzk] = polmul(B,dB,zk,dzk);
[Bg,Bb] = polsplit3(B); Bbr = flip(Bb);
RHS = convol(C,convol(Bg,Bbr)); dRHS = length(RHS)-1;
[Sc,dSc,Rc,dRc] = xdync(Bzk,dBzk,A,dA,RHS,dRHS);
endfunction;
