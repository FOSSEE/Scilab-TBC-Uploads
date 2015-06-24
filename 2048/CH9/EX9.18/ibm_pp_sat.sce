// Anti windup control (AWC) of IBM Lotus Domino server, studied in Example 9.16 on page 357. It can be used for the follwoing situations: with and without saturation, and with and without AWC.
// 9.18

exec('pp_im2.sci',-1);
exec('desired.sci',-1);
exec('zpowk.sci',-1);
exec('cosfil_ip.sci',-1);
exec('polsplit3.sci',-1);
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
exec('polyno.sci',-1);
exec('cindep.sci',-1);
exec('poladd.sci',-1);

//  Transfer function
B = 0.47; A = [1 -0.43]; k = 1; 
[zk,dzk] = zpowk(k);
 
// Transient specifications
rise = 10; epsilon = 0.01; Ts = 1;
phi = desired(Ts,rise,epsilon);

// Controller design
delta = [1 -1]; // internal model of step used
[Rc,Sc,Tc,gamm,F] = pp_im2(B,A,k,phi,delta);

// Study of Antiwindup Controller

key = x_choose(['Simulate without any saturation limits'; 
         'Simulate saturation, but do not use AWC'; 
         'Simulate saturation with AWC in place'; 
         'Simulate with AWC, without saturation limits'],...
         ['Please choose one of the following']);

if key ==0
  disp('Invalid choice');
  return;
elseif key == 1
  U = 2; L = -2; P = 1; F = Rc; E = 0; PSc = Sc; PTc = Tc;
elseif key == 2
  U = 1; L = -1; P = 1; F = Rc; E = 0; PSc = Sc; PTc = Tc;
else
  if key == 3 // Antiwindup controller and with saturation
     U = 1; L = -1; 
  elseif key == 4 // Antiwindup controller, but no saturation
     U = 2; L = -2;
  end
  P = A;
  dF = length(F) - 1;
  PRc = convol(P,Rc); dPRc = length(PRc) - 1;
  [E,dE] = poladd(F,dF,-PRc,dPRc);
  PSc = convol(P,Sc); PTc = convol(P,Tc);
end

// Setting up simulation parameters for stb_disc_sat
t_init = 0; // first step begins
st = 1; // height of first step
t_init2 = 500; // second step begins
st2 = -2; // height of second step
t_final = 1000; // simulation end time
st1 = 0; // no disturbance input
C = 0; D = 1; N_var = 0;

[PTcp1,PTcp2] = cosfil_ip(PTc,1); // PTc/1
[Fp1,Fp2] = cosfil_ip(1,F); // 1/F
[Ep,Fp] = cosfil_ip(E,F); // E/F
[PScp1,PScp2] = cosfil_ip(PSc,1); // PSc/1
[Bp,Ap] = cosfil_ip(B,A); // B/A
[zkp1,zkp2] = cosfil_ip(zk,1); // zk/1
[Cp,Dp] = cosfil_ip(C,D); // C/D




