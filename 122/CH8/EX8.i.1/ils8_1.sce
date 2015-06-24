// Illustration 8.1
// PID Design with Frequency Response

clear; clc;
xdel(winsid());  //close all windows
mode(0);
// please edit the path
// cd "<your code directory>";
// exec("plotresp.sci");

s = %s;
G = syslin('c',1,s^2 + 1);
Kv = 4;
K =  Kv / abs(horner(G,0))

// Step 1 : Gain adjust
G2 = G * K / s
G2w = syslin('c', horner(G2, %s/2/%pi) );// correction for frequences in rad/s

omega = calfrq(G2w,0.1,10);   // discretises such that the peak is                                           // well represented
[db phi] = dbphi(repfreq(G2w,omega));
phi( 53:99 ) = -270;
subplot(2,1,1);  bode(omega,db,phi);
xtitle('Bode plot of G(s) = 4 / [s * (s^2 + 1)]','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');
disp(p_margin(G2w),'Phase margin of G2 =');

// Step 2:
a = 5 // a is chosen to be 5;
G3 = G2 * (a*s + 1)
G3w = syslin('c', horner(G3, %s/2/%pi) );
subplot(2,1,2);  bode(G3w,0.1,10);
xtitle('Bode plot of G(s) = [4 * (5*s + 1)] / [s * (s^2 + 1)]','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');
disp(p_margin(G3w),'Phase margin of G3 =');

// Step 3
scf();
b = 0.25
G4 = G3 * (b*s + 1)
G4w = syslin('c', horner(G4, %s/2/%pi) );
subplot(2,1,1);  bode(G4w,0.1,10);
xtitle('Bode plot of G(s) = [4 * (5*s + 1)] / [s * (s^2 + 1)*(0.25*s +1)]','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');
disp(p_margin(G4w),'Phase margin of G4 =');

C  = syslin('c',G4 /. 1)
disp(roots(C.den),'closed loop poles =');
t = 0:0.1:14;
u = ones(1,length(t));
subplot(2,1,2); plotresp(u,t,C,'Step response of PID controlled system');