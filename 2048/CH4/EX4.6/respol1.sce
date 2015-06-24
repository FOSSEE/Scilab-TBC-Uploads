// Partial fraction expansion for Example 4.24
// 4.6

//             2z^2 + 2z
// G(z)  =  ---------------
//            z^2 + 2z - 3

exec('respol.sci',-1);
exec('flip.sci',-1);

num = [2 2 0];
den = [1 2 -3];
[res,pol] = respol(num,den) //respol is a user defined function
