// Minimum variance control for nonminimum phase example of Example 11.6 on page 416.
// 11.10 

exec('mv_nm.sci',-1);
exec('cl.sci',-1);
exec('zpowk.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);
exec('polsplit3.sci',-1);
exec('flip.sci',-1);
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
exec('poladd.sci',-1);
exec('tfvar.sci',-1);
exec('l2r.sci',-1);
exec('transp.sci',-1);
exec('tf.sci',-1);
exec('covar_m.sci',-1);

A = convol([1 -1],[1 -0.7]); dA = 2;
B = [0.9 1]; dB = 1; k = 1;
C = [1 -0.7]; dC = 1; int1 = 0;
[Sc,dSc,Rc,dRc] = mv_nm(A,dA,B,dB,C,dC,k,int1);
[Nu,dNu,Du,dDu,Ny,dNy,Dy,dDy,yvar,uvar] = ...
cl(A,dA,B,dB,C,dC,k,Sc,dSc,Rc,dRc,int1);

