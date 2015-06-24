// Pole placement controller, with internal model of a step, for the magnetically suspended ball problem, as discussed in Example 9.8 on page 339.
// 9.9

// PP control with internal model for ball problem
exec('desired.sci',-1);
exec('pp_im.sci',-1);
exec('myc2d.sci',-1);
exec('polsplit3.sci',-1);
exec('zpowk.sci',-1);
exec('rowjoin.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('cindep.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);
exec('xdync.sci',-1);
exec('cosfil_ip.sci',-1);
exec('polyno.sci',-1);

// Operating conditions
M = 0.05; L = 0.01; R = 1; K = 0.0001; g = 9.81;

// Equilibrium conditions
hs = 0.01; is = sqrt(M*g*hs/K);

// State space matrices
a21 = K*is^2/M/hs^2; a23 = - 2*K*is/M/hs; a33 = - R/L;
b3 = 1/L;
a1 = [0 1 0; a21 0 a23; 0 0 a33];
b1 = [0; 0; b3]; c1 = [1 0 0]; d1 = 0;

// Transfer functions
G = syslin('c',a1,b1,c1,d1); Ts = 0.01; [B,A,k] = myc2d(G,Ts);

// Transient specifications 
rise = 0.1; epsilon = 0.05;
phi = desired(Ts,rise,epsilon);

// Controller design
Delta = [1 -1];  //internal model of step used
[Rc,Sc,Tc,gamm] = pp_im(B,A,k,phi,Delta);

// simulation parameters for c_ss_cl.xcos
st = 0.0001;  //desired change in h, in m.
t_init = 0; // simulation start time
t_final = 0.5; //simulation end time
xInitial = [0 0 0];
N = 1; C = 0; D = 1; N_var = 0;

[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Np,Rcp] = cosfil_ip(N,Rc); // 1/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Cp,Dp] = cosfil_ip(C,D); // C/D

