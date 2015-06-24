// Evaluation of continuous time controller for the case study presented in Example 9.13 on page 349.
// 9.15

clear
exec('tf.sci',-1);
exec('myc2d.sci',-1);
exec('zpowk.sci',-1);
exec('cosfil_ip.sci',-1);
exec('polyno.sci',-1);

num = 200;
den = convol([0.05 1],[0.05 1]);
den = convol([10 1],den);
G = tf(num,den); Ts = 0.005; 
[B,A,k] = myc2d(G,Ts);
[zk,dzk] = zpowk(k); //int = 0;

// Sigurd's feedback controller'
numb = 0.5*convol([1 2],[0.05 1]);
denb = convol([1 0],[0.005 1]);
Gb = tf(numb,denb);
[Sb,Rb,kb] = myc2d(Gb,Ts);
[zkb,dzkb] = zpowk(kb);
Sb = convol(Sb,zkb);

// Sigurd's feed forward controller'
numf = [0.5 1];
denf = convol([0.65 1],[0.03 1]);
Gf = tf(numf,denf);
[Sf,Rf,kf] = myc2d(Gf,Ts);
[zkf,dzkf] = zpowk(kf);
Sf = convol(Sf,zkf);

// Margins
simp_mode(%f);
L = G*Gb;
Gm = g_margin(L); // ------
Pm = p_margin(L); // ------
Lnum = convol(Sb,convol(zk,B));
Lden = convol(Rb,A);
L = tf(Lnum,Lden,Ts);
DGm = g_margin(L); // ------
DPm = p_margin(L); // ------

// Noise
num1 = 100; den1 = [10 1];

// simulation parameters for 
// entirely continuous simulation: g_s_cl3.xcos
// hybrid simulation: g_s_cl6.xcos
st = 1; // desired change in setpoint
st1 = 0;
t_init = 0; // simulation start time
t_final = 5; // simulation end time

num = polyno(num,'s'); den = polyno(den,'s');
Numb = polyno(numb,'s'); Denb = polyno(denb,'s');
Numf = polyno(numf,'s'); Denf = polyno(denf,'s'); 
Num1 = polyno(num1,'s'); Den1 = polyno(den1,'s'); 

[Sbp,Rbp] = cosfil_ip(Sb,Rb);
[Sfp,Rfp] = cosfil_ip(Sf,Rf);


