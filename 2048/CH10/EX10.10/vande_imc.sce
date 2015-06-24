// Design of conventional controller for van de Vusse reactor problem
// 10.10

exec('tf.sci');
exec('myc2d.sci');
exec('imcsplit.sci',-1);
exec('imc_stable.sci');
exec('zpowk.sci',-1);
exec('flip.sci',-1);
exec('poladd.sci',-1);
exec('polsize.sci',-1);

num = [-1.117 3.1472]; den = [1 4.6429 5.3821];
G = tf(num,den);
Ts = 0.1;
[B,A,k] = myc2d(G,Ts);
alpha = 0.5;
[k,HiN,HiD,R,S] = imc_stable(B,A,k,alpha);
[zk,dzk] = zpowk(k);
Bp = B; Ap = A;





