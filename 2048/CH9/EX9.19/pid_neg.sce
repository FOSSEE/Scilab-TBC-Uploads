// Demonstration of usefulness of negative PID parameters, discussed in Example 9.17 on page 361.
// 9.19

exec('iodelay.sci',-1);
exec('delc2d.sci',-1);
exec('desired.sci',-1);
exec('pp_pid.sci',-1);
exec('cosfil_ip.sci',-1);
exec('tf.sci',-1);
exec('flip.sci',-1);
exec('zpowk.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);
exec('xdync.sci',-1);
exec('rowjoin.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);

// Discretize the continuous plant
num = 1; den = [2 1]; tau = 0.5;
G1 = tf(num,den);
G = iodelay(G1,tau);
Ts = 0.5;
[B,A,k] = delc2d(G,G1,Ts);

// Specify transient requirements
epsilon = 0.05; rise = 5;
phi = desired(Ts,rise,epsilon);

// Design the controller
Delta = [1 -1];
[Rc,Sc] = pp_pid(B,A,k,phi,Delta);

// parameters for simulation using g_s_cl
Tc = Sc; gamm = 1; N = 1; 
C = 0; D = 1; N_var = 0; 
st = 1; t_init = 0; t_final = 20;

[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Np,Rcp] = cosfil_ip(N,Rc); // N/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Cp,Dp] = cosfil_ip(C,D); // C/D
Num = numer(G1);
Den = denom(G1);

