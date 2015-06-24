// Smith predictor for paper machine control in Example 10.2 on page 385.
// 10.2

exec('zpowk.sci',-1);
exec('poladd.sci',-1);
exec('polsize.sci',-1);
exec('pp_im.sci',-1);
exec('polsplit3.sci',-1);
exec('polmul.sci',-1);
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
exec('polyno.sci',-1);

Ts = 1; B = 0.63; A = [1 -0.37]; k = 3;
Bd = convol(B,[0 1]);
kd = k - 1;
[zkd,dzkd] = zpowk(kd);
[mzkd,dmzkd] = poladd(1,0,-zkd,dzkd);

// Desired transfer function
phi = [1 -0.5]; delta = 1;

// Controller design
[Rc,Sc,Tc,gamm] = pp_im(B,A,1,phi,delta);

// simulation parameters for smith_disc.xcos 
st = 1.0; // desired change in setpoint
t_init = 0; // simulation start time
t_final = 20; // simulation end time

// simulation parameters for smith_disc.xcos
N_var = 0; C = 0; D = 1; N = 1; 

[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Rcp1,Rcp2] = cosfil_ip(1,Rc); // 1/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Bdp,Ap] = cosfil_ip(Bd,A); // Bd/Ad
[zkdp1,zkdp2] = cosfil_ip(zkd,1); // zkd/1
[mzkdp1,mzkdp2] = cosfil_ip(mzkd,1); // mzkd/1
[Cp,Dp] = cosfil_ip(C,D); // C/D

