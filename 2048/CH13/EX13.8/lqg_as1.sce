// LQG control design for the problem discussed in Example 13.6 on page 474.
// 13.8

// Solves Example 3.1 of Ahlen and Sternad in Hunt's book
exec('lqg1.sci',-1);
exec('specfac.sci',-1);
exec('flip.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);
exec('poladd.sci',-1);
exec('polyno.sci',-1);
exec('putin.sci',-1);
exec('clcoef.sci',-1);
exec('xdync.sci',-1);
exec('rowjoin.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('cindep.sci',-1);
exec('ext.sci',-1);

A = [1 -0.9]; dA = 1; B = [0.1 0.08]; dB = 1; 
k = 2; rho = 0.1; C = 1; dC = 0;
V = 1; dV = 0; F = 1; dF = 0; W = [1 -1]; dW = 1;
[R1,dR1,Sc,dSc] = ...
lqg1(A,dA,B,dB,C,dC,k,rho,V,dV,W,dW,F,dF)
