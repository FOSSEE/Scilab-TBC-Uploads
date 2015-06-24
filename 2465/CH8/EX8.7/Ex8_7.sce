//Chapter-8,Example 7,Page 196
clc();
close();

Ksp=3.45*10^-11     //solubility product of CaF2

//Ksp = [Ca+2]*[F-]^2
//Ksp = [S]*[2*S]^2

S = nthroot(Ksp,3)/4

printf('the solubility of CaF2 is S = %.7f mole/litre',S)

//mistake in textbook
