// Partial fraction expansion for Example 4.30
// 4.10

//                3 - (5/6)z^-1                      3z^2 - (5/6)z   
// G(z)  =  ---------------------------   =  --------------------------
//           (1-(1/4)z^-1)(1-(1/3)z^-1)       (z - (1/4))(z - (1/3))

// No equivalent of residuez

exec('respol.sci',-1);
exec('flip.sci',-1);

num = [3 -5/6 0];
den = convol([1 -1/4],[1 -1/3]);
[res,pol,q] = respol(num,den)
