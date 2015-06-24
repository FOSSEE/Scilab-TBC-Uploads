// IMC design for viscosity control problem
// 10.6

exec('imc_stable1.sci',-1);
exec('zpowk.sci',-1);
exec('imcsplit.sci',-1);
exec('flip.sci',-1);

B = [0.51 1.21];
A = [1 -0.44];
k = 1;
alpha = 0.5;

[k,GiN,GiD] = imc_stable1(B,A,k,alpha);

[zk,dzk] = zpowk(k);
Bp = B; Ap = A; 
Ts = 0.1; t0 = 0; tf = 20; Nvar = 0.01;


