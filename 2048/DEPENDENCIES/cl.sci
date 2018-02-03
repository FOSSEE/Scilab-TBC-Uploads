// Calculation of closed loop transfer functions
// 11.6

// function [Nu,dNu,Du,dDu,Ny,dNy,Dy,dDy,yvar,uvar] = ...
//    cl(A,dA,B,dB,C,dC,k,S,dS,R,dR,int)
// int>=1 means integrated noise and control law:
// delta u = - (S/R)y
// Evaluates the closed loop transfer function and 
// variances of input and output

function [Nu,dNu,Du,dDu,Ny,dNy,Dy,dDy,yvar,uvar] = ...
   cl(A,dA,B,dB,C,dC,k,S,dS,R,dR,int1)
[zk,dzk] = zpowk(k);

[BS,dBS] = polmul(B,dB,S,dS);
[zBS,dzBS] = polmul(zk,dzk,BS,dBS);
[RA,dRA] = polmul(R,dR,A,dA);
if int1>=1, [RA,dRA] = polmul(RA,dRA,[1 -1],1); end

[D,dD] = poladd(RA,dRA,zBS,dzBS);

[Ny,dNy] = polmul(C,dC,R,dR);
[Nu,dNu] = polmul(C,dC,S,dS);

[Nu,dNu,Du,dDu,uvar] = tfvar(Nu,dNu,D,dD);
[Ny,dNy,Dy,dDy,yvar] = tfvar(Ny,dNy,D,dD);

endfunction;
