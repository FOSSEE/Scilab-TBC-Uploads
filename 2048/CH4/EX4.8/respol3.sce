// Partial fraction expansion for Example 4.27
// 4.8

//         11z^2 - 15z + 6      A1         A2          B
// G(z) = ----------------- = ------- + --------- + -------
//        (z - 2) (z - 1)^2   (z - 1)   (z - 1)^2   (z - 2)

exec('respol.sci',-1);
exec('flip.sci',-1);

num = [11 -15 6];
den = convol([1 -2],convol([1 -1],[1 -1])); 
[res,pol] = respol(num,den) //User defined function
