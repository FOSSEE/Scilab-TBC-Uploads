// IMC design for Lewin's example
// 10.8

exec('tf.sci');
exec('myc2d.sci');
exec('imc_stable1.sci');
exec('zpowk.sci',-1);
exec('imcsplit.sci',-1);
exec('flip.sci',-1);

num = 1; den = [250 35 1]; Ts = 3;
G = tf(num,den);

[B,A,k] = myc2d(G,Ts);

alpha = 0.9;
[k,GiN,GiD] = imc_stable1(B,A,k,alpha);

[zk,dzk] = zpowk(k);
Bp = B; Ap = A;
t0 = 0; tfi = 100; st = 1; Nvar = 0;



