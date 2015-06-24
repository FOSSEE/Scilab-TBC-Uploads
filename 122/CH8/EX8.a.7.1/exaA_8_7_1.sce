// Example A-8-7-1
// PID Design with Frequency Response

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "<your code directory>";
// exec("plotresp.sci");

s = %s;
Gp = syslin('c',s + 0.1,s^2 + 1);
Kv = 4;
K =  Kv / abs(horner(Gp,0))

// Step 1 : Gain adjust
G1 = Gp * K / s
G1w = syslin('c', horner(G1, %s/2/%pi) );// correction for frequences in rad/s


subplot(2,1,1);  bode(G1w);
xtitle('Bode plot of G(s) = 40*(s + 0.1)/ [s*(s^2 + 1)]','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');
disp(p_margin(G1w),'Phase margin of G =');

// Step 2:
a = 0.1526;
GGc = G1 * (a*s + 1)
GGcw = syslin('c', horner(GGc, %s/2/%pi) );
subplot(2,1,2);  bode(GGcw,0.1,10);
xtitle('Bode plot of G*Gc = [4 *(0.1526*s + 1)*(s + 0.1)]/[s*(s^2 + 1)]','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');
disp(p_margin(GGcw),'Phase margin of G*Gc =');
disp(g_margin(GGcw),'Gain margin of G*Gc =');

scf();
C  = syslin('c',GGc /. 1)
disp(roots(C.den),'closed loop poles =');
t = 0:0.05:10;
u = ones(1,length(t));
subplot(2,1,1); plotresp(u,t,C,'Step response of PID controlled system');
subplot(2,1,2); plotresp(t,t,C,'Ramp response of PID controlled system');