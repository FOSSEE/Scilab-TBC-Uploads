// Controller design for the case study presented in Example 9.12 on page 347. 
// 9.14

exec('tf.sci',-1);
exec('desired.sci',-1);
exec('zpowk.sci',-1);
exec('myc2d.sci',-1);
exec('polsplit3.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);
exec('xdync.sci',-1);
exec('rowjoin.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('pp_im2.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);
exec('cosfil_ip.sci',-1);

num = 200;
den = convol([0.05 1],[0.05 1]);
den = convol([10 1],den);
G = tf(num,den); Ts = 0.025; 
num = G('num'); den = G('den');
// iodel = 0;
[B,A,k] = myc2d(G,Ts);
[zk,dzk] = zpowk(k); //int1 = 0;

// Transient specifications
a = 0.9; rise = 0.24; epsilon = 0.05;
phi = desired(Ts,rise,epsilon);

// Controller design
Delta = [1 -1]; // internal model of step is present
[Rc,Sc,Tc,gamm] = pp_im2(B,A,k,phi,Delta,a);

// margin calculation
Lnum = convol(Sc,convol(B,zk));
Lden = convol(Rc,A);
L = tf(Lnum,Lden,Ts);
Gm = g_margin(L); //---- Does not match --------------- (in dB)
Pm = p_margin(L); //---- Convergence problem --------------- (in degree)

num1 = 100; den1 = [10 1];
Gd = tf(num1,den1);  //-------
[C,D,k1] = myc2d(Gd,Ts);
[zk,dzk] = zpowk(k);
C = convol(C,zk);

// simulation parameters g_s_cl2.xcos ------------
N = 1;
st = 1; // desired change in setpoint
st1 = 0; // magnitude of disturbance
t_init = 0; // simulation start time
t_final = 1.5; // simulation end time

[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Np,Rcp] = cosfil_ip(N,Rc); // N/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Cp,Dp] = cosfil_ip(C,D); // C/D

