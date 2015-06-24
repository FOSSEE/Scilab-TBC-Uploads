// IMC design for the control of van de Vusse reactor
// 10.7

exec('tf.sci');
exec('myc2d.sci');
exec('imc_stable1.sci');
exec('imcsplit.sci',-1);
exec('flip.sci',-1);
exec('zpowk.sci',-1);

num = [-1.117 3.1472]; den = [1 4.6429 5.3821];
G = tf(num,den);
Ts = 0.1;
[B,A,k] = myc2d(G,Ts);
alpha = 0.9;
[k,GiN,GiD] = imc_stable1(B,A,k,alpha);
[zk,dzk] = zpowk(k);
Bp = B; Ap = A;
t0 = 0; tfi = 10; st = 1; Nvar = 0;


