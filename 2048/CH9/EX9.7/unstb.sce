// Simulation of closed loop system with an unstable controller, as discussed in Example 9.5 on page 335.
// 9.7

exec('desired.sci',-1);
exec('zpowk.sci',-1);
exec('polmul.sci',-1);
exec('polsplit2.sci',-1);
exec('polsize.sci',-1);
exec('xdync.sci',-1);
exec('rowjoin.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);
exec('seshft.sci',-1);
exec('cosfil_ip.sci',-1);
exec('pp_basic.sci',-1);

Ts = 1; B = [1 -3]; A = [1 2 -8]; k = 1;
// Since k=1, tf is of the form z^-1
[zk,dzk] = zpowk(k); // int1 = 0;//---- int1

// Transient specifications
rise = 10; epsilon = 0.1;
phi = desired(Ts,rise,epsilon);

// Controller design
[Rc,Sc,Tc,gamm] = pp_basic(B,A,k,phi);

// simulation parameters for basic_disc.xcos
//While simulating for t_final = 100, set the limit of Y axis of each scope
//u1: -0.2 to 3
//y1: -0.1 to 1.2
st = 1.0; // Desired change in setpoint
t_init = 0; // Simulation start time
t_final = 1000; // Simulation end time

// Simulation parameters for stb_disc.xcos
N_var = 0; C = 0; D = 1; N = 1; 

[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Rcp1,Rcp2] = cosfil_ip(1,Rc); // 1/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Bp,Ap] = cosfil_ip(B,A); // B/A
[zkp1,zkp2] = cosfil_ip(zk,1); // zk/1
[Cp,Dp] = cosfil_ip(C,D); // C/D

[Tcp,Rcp] = cosfil_ip(Tc,Rc); // Tc/Rc
[Scp_b,Rcp_b] = cosfil_ip(Sc,Rc); // Sc/Rc



