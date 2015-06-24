// GPC design for viscosity control in Example 12.4 on page 446.
// 12.7

exec('gpc_col.sci',-1);
exec('poladd.sci',-1);
exec('xdync.sci',-1);
exec('rowjoin.sci',-1);
exec('polsize.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);
exec('polmul.sci',-1);
exec('flip.sci',-1);

// GPC control of viscosity problem
A=[1 -0.44]; dA=1; B=[0.51 1.21]; dB=1; N=2; k=1;
C = [1 -0.44]; dC = 1; rho = 1;

[K,KH1,KH2,Tc,dTc,Sc,dSc,R1,dR1] = ...
gpc_col(A,dA,B,dB,C,dC,N,k,rho)
