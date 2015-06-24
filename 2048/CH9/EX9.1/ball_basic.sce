// Pole placement controller for magnetically suspended ball problem, discussed in Example 9.3 on page 331.
// 9.1

exec('myc2d.sci',-1);
exec('desired.sci',-1);
exec('zpowk.sci',-1);
exec('polsplit2.sci',-1);
exec('polsize.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);
exec('polmul.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('xdync.sci',-1);
exec('left_prm.sci',-1);
exec('rowjoin.sci',-1);
exec('pp_basic.sci',-1);
exec('polyno.sci',-1);
exec('cosfil_ip.sci',-1);

// Magnetically suspended ball problem
// Operating conditions
M = 0.05; L = 0.01; R = 1; K = 0.0001; g = 9.81;

//Equilibrium conditions
hs = 0.01; is = sqrt(M*g*hs/K);

// State space matrices
a21 = K*is^2/M/hs^2; a23 = - 2*K*is/M/hs; a33 = - R/L;
b3 = 1/L;
a1 = [0 1 0; a21 0 a23; 0 0 a33];
b1 = [0; 0; b3]; c1 = [1 0 0]; d1 = 0;

// Transfer functions
G = syslin('c',a1,b1,c1,d1); Ts = 0.01; 
[B,A,k] = myc2d(G,Ts);

//polynomials are returned
[Ds,num,den] = ss2tf(G);
num = clean(num); den = clean(den);

// Transient specifications
rise = 0.15; epsilon = 0.05;
phi = desired(Ts,rise,epsilon);

// Controller design
[Rc,Sc,Tc,gamm] = pp_basic(B,A,k,phi);

// Setting up simulation parameters for basic.xcos
st = 0.0001; // desired change in h, in m.
t_init = 0; // simulation start time
t_final = 0.5; // simulation end time

// Setting up simulation parameters for c_ss_cl.xcos
N_var = 0; xInitial = [0 0 0]; N = 1; C = 0; D = 1;

[Tc1,Rc1] = cosfil_ip(Tc,Rc); // Tc/Rc 
[Sc2,Rc2] = cosfil_ip(Sc,Rc); // Sc/Rc

[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Np,Rcp] = cosfil_ip(N,Rc); // 1/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Cp,Dp] = cosfil_ip(C,D); // C/D
