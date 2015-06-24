// Illustration of system type, as explained in Example 7.10 on page 275.
// 7.7

exec('rowjoin.sci',-1);
exec('zpowk.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);
exec('indep.sci',-1);
exec('t1calc.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('clcoef.sci',-1);
exec('colsplit.sci',-1);
exec('seshft.sci',-1);
exec('left_prm.sci',-1);
exec('cindep.sci',-1);
exec('xdync.sci',-1);
exec('pp_pid.sci',-1);
exec('cosfil_ip.sci');

// Plant 
B = 1; A = [1 -1]; zk = [0 1]; Ts = 1; k = 1;
// Value of k absent in original code
// Specify closed loop characteristic polynomial
phi = [1 -0.5];

// Design the controller
reject_ramps = 1;
  if reject_ramps == 1,
    Delta = [1 -1]; // to reject ramps another Delta
  else
    Delta = 1; // steps can be rejected by plant itself
  end
[Rc,Sc] = pp_pid(B,A,k,phi,Delta);

// parameters for simulation using stb_disc.mdl
Tc = Sc; gamm = 1; N = 1; 
C = 0; D = 1; N_var = 0; 
st = 1; t_init = 0; t_final = 20;

[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Rcp1,Rcp2] = cosfil_ip(1,Rc); // 1/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Bp,Ap] = cosfil_ip(B,A); // B/A
[zkp1,zkp2] = cosfil_ip(zk,1); // zk/1
[Cp,Dp] = cosfil_ip(C,D); // C/D

// Give appropriate path
//xcos('stb_disc.xcos');
