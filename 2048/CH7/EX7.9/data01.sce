// Left coprime factorization as discussed in Example 7.13 on page 295.
// 7.9

exec('rowjoin.sci',-1);
exec('makezero.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('polsize.sci',-1);
exec('seshft.sci',-1);
exec('indep.sci',-1);
exec('move_sci.sci',-1);
exec('t1calc.sci',-1);
exec('left_prm.sci',-1);

D = [1 0 0 0 0 0
0 1 0 1 0 0
0 0 1 1 1 0];
N = [
1 0 0
0 1 0
0 0 1];
dD = 1;
dN = 0;
[B,dB,A,dA] = left_prm(N,dN,D,dD)



