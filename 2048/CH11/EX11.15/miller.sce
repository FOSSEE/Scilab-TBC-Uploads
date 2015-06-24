// PID tuning through GMVC law, as discussed in Example 11.11.
// 11.15

exec('gmvc_pid.sci',-1);
exec('zpowk.sci',-1);
exec('ch_pol.sci',-1);
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
exec('filtval.sci',-1);
exec('polyno.sci',-1);

// GMVC PID tuning of example given by Miller et al.
// Model
A = [1 -1.95 0.935]; B = -0.015; k = 1; Ts = 1;

// Transient specifications
N = 15; epsilon = 0.1;
T = ch_pol(N,epsilon);

// Controller Design
[Kc,tau_i,tau_d,L] = gmvc_pid(A,B,k,T,Ts);
L1 = filtval(L,1);
zk = zpowk(k);


