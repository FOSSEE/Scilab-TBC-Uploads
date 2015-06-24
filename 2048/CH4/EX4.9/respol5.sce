// Partial fraction expansion for Example 4.29
// 4.9

//                z^2 + 2z            
// G(z)  =  --------------------  
//           (z + 1)^2 (z - 2)

exec('respol.sci',-1);
exec('flip.sci',-1);

num = [1 2 0];
den = convol(convol([1 1],[1 1]),[1 -2]);
[res,pol] = respol(num,den)
