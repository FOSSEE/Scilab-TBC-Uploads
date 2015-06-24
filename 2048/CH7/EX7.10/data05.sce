// Solution to polynomial equation, as discussed in Example 7.14 on page 295.
// 7.10

exec('move_sci.sci',-1);
exec('makezero.sci',-1);
exec('seshft.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);
exec('indep.sci',-1);
exec('t1calc.sci',-1);
exec('left_prm.sci',-1);
exec('polsize.sci',-1);
exec('rowjoin.sci',-1);
exec('xdync.sci',-1);

N = [0  4 0 1
       -1 8 0 3];
dN = 1;
D = [0 0  1 4 0 1
       0 0 -1 0 0 0];
dD = 2;
C = [1 0 1 1
     0 2 0 1];
dC = 1;
[Y,dY,X,dX,B,dB,A,dA] = xdync(N,dN,D,dD,C,dC)






