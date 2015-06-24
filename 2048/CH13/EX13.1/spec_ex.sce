// Spectral factorization, as discussed in Example 13.3 on page 467.
// 13.1

exec('spec1.sci',-1);
exec('flip.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);
exec('poladd.sci',-1);

A = convol([-0.5 1],[-0.9 1]); dA = 2;
B = 0.5*[-0.9 1]; dB = 1; rho = 1;
[r,beta1,sigma] = spec1(A,dA,B,dB,rho)
