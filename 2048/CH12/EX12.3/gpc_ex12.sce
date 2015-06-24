// GPC design for the problem discussed in Example 12.2 on page 441.
// 12.3

exec('gpc_bas.sci',-1);
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
exec('filtval.sci',-1);

// Camacho and Bordon's GPC example; Control law
A=[1 -0.8]; dA=1; B=[0.4 0.6]; dB=1; N=3; k=1; rho=0.8;
[K,KH1,KH2,Tc,dTc,Sc,dSc,R1,dR1] = ...
gpc_bas(A,dA,B,dB,N,k,rho)
// C=1; dC=0; [K,KH1,KH2,Tc,dTc,Sc,dSc,R1,dR1] = ...
// gpc_col(A,dA,B,dB,C,dC,N,k,rho)










