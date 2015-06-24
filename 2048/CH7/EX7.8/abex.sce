// Solution to Aryabhatta's identity, presented in Example 7.12 on page 293.
// 7.8

exec('indep.sci',-1);
exec('rowjoin.sci',-1);
exec('polsize.sci',-1);
exec('makezero.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);
exec('seshft.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('xdync.sci',-1);

N = convol([0 1],[1 1]);
D = convol([1 -4],[1 -1]);
dN = 2; dD = 2;
C = [1 -1 0.5];
dC = 2;
[Y,dY,X,dX,B,dB,A,dA] = xdync(N,dN,D,dD,C,dC)

