// Partial fraction expansion for Example 4.26
// 4.7

//            z^2 + z          A          B           C
//  G(z) =  -----------  =  ------- + --------- + ---------
//           (z - 1)^3      (z - 1)   (z - 1)^2   (z - 1)^3

exec('respol.sci',-1);
exec('flip.sci',-1);

num = [1 1 0];
den = convol([1 -1],convol([1 -1],[1 -1])); // poly multiplication
[res,pol] = respol(num,den)

// Output interpretation
// res  =
//C = 2
//B = 1
//A = 0

// pol  =
// 1      (z - 1)^3
// 1      (z - 1)^2
// 1      (z - 1)
