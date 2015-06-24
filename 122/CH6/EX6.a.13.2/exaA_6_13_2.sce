// Example A-6-13-2
// Lead Compensator Design Attempt 2

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");
// exec("plotresp.sci");

s = %s;
G = syslin('c',1,s^2);
H = syslin('c',1,0.1*s + 1);

R = [-1 -1];
I = [1.73205 -1.73205];
dp = R(1) + %i*I(1);

subplot(1,2,1);
rootl(G*H,[-15 -15; 5 15],'Root locus plot for uncompensated system');
plot(R,I,'x');
angdef = 180 - phasemag(horner(G*H,dp));
disp(angdef,'angle deficiency =');

z = 3; // zeros at -3;
p = 1.73205 / tand(40.89334 - angdef/2) + 1 ; disp(p,'p =');
Gc = ((s + z) / (s + p)) ^2;
disp(Gc,'lead compensator =');

Kc = abs(1/ horner(G*Gc*H,dp));
disp(Kc,'Kc =');
O = Kc*Gc*G*H;   disp(O,'open loop Transfer function =');
C = Kc*Gc*G /. H;      disp(C,'closed loop Transfer function =');
disp(roots(C.den),'closed loop poles =');

subplot(1,2,2);
rootl(O,[-15 -15; 5 15],'Root locus plot for compensated system');
plot(R,I,'x');

scf();
t = 0:0.05:10;
u = ones(1,length(t)); //step response
plotresp(u,t,C,'Unit step response');
xstring(1,0.95,'compensated system');
