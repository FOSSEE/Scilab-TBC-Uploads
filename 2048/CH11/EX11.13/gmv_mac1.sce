// GMVC design of MacGregor's first example, as discussed in Example 11.9 on page 421. 
// 11.13

// MacGregor's first control problem by gmv

exec('gmv.sci',-1);
exec('cl.sci',-1);
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
exec('zpowk.sci',-1);
exec('poladd.sci',-1);
exec('tfvar.sci',-1);
exec('l2r.sci',-1);
exec('transp.sci',-1);
exec('tf.sci',-1);
exec('covar_m.sci',-1);

A = [1 -1.4 0.45]; dA = 2; C = [1 -0.5]; dC = 1;
B = 0.5*[1 -0.9]; dB = 1; k = 1; int1 = 0;
rho = 1;
[Sc,dSc,Rc,dRc] = gmv(A,dA,B,dB,C,dC,k,rho,int1);
[Nu,dNu,Du,dDu,Ny,dNy,Dy,dDy,yvar,uvar] = ...
        cl(A,dA,B,dB,C,dC,k,Sc,dSc,Rc,dRc,int1);
