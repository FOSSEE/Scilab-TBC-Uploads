// LQG design for the problem discussed in Example 13.4 on page 472.
// 13.5

// MacGregor's first control problem

exec('lqg1.sci',-1);
exec('cl.sci',-1);
exec('specfac.sci',-1);
exec('flip.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);
exec('poladd.sci',-1);
exec('polyno.sci',-1);
exec('putin.sci',-1);
exec('xdync.sci',-1);
exec('rowjoin.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);
exec('ext.sci',-1);
exec('zpowk.sci',-1);
exec('tfvar.sci',-1);
exec('l2r.sci',-1);
exec('transp.sci',-1);
exec('tf.sci',-1);
exec('covar_m.sci',-1);

A = [1 -1.4 0.45]; dA = 2; C = [1 -0.5]; dC = 1;
B = 0.5*[1 -0.9]; dB = 1; k = 1; int1 = 0; F = 1; dF = 0;
V = 1; W = 1; dV = 0; dW = 0;
rho = 1;
[R1,dR1,Sc,dSc] = lqg1(A,dA,B,dB,C,dC,k,rho,V,dV,W,dW,F,dF)
[Nu,dNu,Du,dDu,Ny,dNy,Dy,dDy,yvar,uvar] = ...
      cl(A,dA,B,dB,C,dC,k,Sc,dSc,R1,dR1,int1);
