// Solution of Aryabhatta's identity Eq. 11.8, as discussed in Example 11.3 on page 409.
// 11.3

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

C = [1 0.5]; dC = 1; j=2;
A = [1 -0.6 -0.16]; dA = 2;
zj = zeros(1,j+1); zj(j+1) = 1;
[Fj,dFj,Ej,dEj] = xdync(zj,j,A,dA,C,dC)
