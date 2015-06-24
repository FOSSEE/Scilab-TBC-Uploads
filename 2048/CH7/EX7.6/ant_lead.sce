// Verification of performance of lead controller on antenna system, as discussed in Example 7.3. 
// 7.6 

// Continuous time antenna model
a = 0.1;
F = [0 1;0 -a]; g = [0; a]; c = [1 0]; d = 0;
Ga = syslin('c',F,g,c,d); [ds,num,den] = ss2tf(Ga); 
Num = clean(num); Den = clean(den);
Ts = 0.2;
G = dscr(Ga,Ts);

// lead controller
beta1 = 0.8;
N = [1 -0.9802]*(1-beta1)/(1-0.9802); Rc = [1 -beta1];

// simulation parameters using g_s_cl2.cos
gamm = 1; Sc = 1; Tc = 1; C = 0; D = 1;
st = 1; st1 = 0;
t_init = 0; t_final = 20;

// u1: -4 to 11
// y1: 0 to 1.4
exec('cosfil_ip.sci',-1);
[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
[Np,Rcp] = cosfil_ip(N,Rc); // N/Rc
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
[Cp,Dp] = cosfil_ip(C,D); // C/D
