// Pole placement controller for motor problem, discussed in Example 9.10 on page 343.
// 9.11

exec('desired.sci',-1);
exec('pp_im.sci',-1);
exec('myc2d.sci',-1);
exec('cosfil_ip.sci',-1);
exec('polsplit3.sci',-1);
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
exec('polyno.sci',-1);

// Motor control problem
// Transfer function
a1 = [-1 0; 1 0]; b1 = [1; 0]; c1 = [0 1]; d1 = 0;
G = syslin('c',a1,b1,c1,d1); Ts = 0.25;
[B,A,k] = myc2d(G,Ts);

// Transient specifications
rise = 3; epsilon = 0.05; 
phi = desired(Ts,rise,epsilon);

// Controller design
Delta = 1; // No internal model of step used
[Rc,Sc,Tc,gamm] = pp_im(B,A,k,phi,Delta);

// simulation parameters for c_ss_cl.xcos
st = 1;  //desired change in position
t_init = 0;  //simulation start time
t_final = 10;  //simulation end time
xInitial = [0 0];  //initial conditions
N = 1; C = 0; D = 1; N_var = 0;

[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Np,Rcp] = cosfil_ip(N,Rc); // 1/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Cp,Dp] = cosfil_ip(C,D); // C/D



