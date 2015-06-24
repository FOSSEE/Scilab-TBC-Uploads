// Example A-6-18
// Design of a compensator for an highly oscillactory system

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");
// exec("plotresp.sci");

s = %s;
G = syslin('c',2*s + 0.1,s * (s^2 + 0.1*s + 4));

R = [-2 -2];
I = 2*sqrt(3) * [1 -1];
dp = R(1) + %i*I(1)

// Cancel the zero at -0.1
Gc2 = (s + 4)/(2*s + 0.1)
G1 = G*Gc2

angdef = 180 - phasemag(horner(G1,dp));
disp(angdef,'angle deficiency =')

// Designing two lead comensators in series
angdefby2 = angdef / 2
z = 2 // say
p = 2 + 2 * sqrt(3) * cotd(90 - angdefby2)

Gc1 = ((s + z)/(s + p))^2
G2 = Gc1 * G1;
Kc = 1 / abs(horner(G2,dp))
Gc = Kc * Gc1 * Gc2

H = Kc * G2;  disp(H,'Gc*G = ');
C = H /. 1;   disp(C,'closed loop Transfer function =');
disp(roots(C.den),'closed loop poles =');

subplot(1,2,1);
rootl(G,[-15 -15; 15 15],'Root locus plot for uncompensated system');
plot(R,I,'x');
xgrid(color('gray'));
subplot(1,2,2);
rootl(H,[-15 -15; 15 15],'Root locus plot for compensated system');
plot(R,I,'x');
xgrid(color('gray'));

scf();
subplot(2,1,1);
t = 0:0.02:5;
u = ones(1,length(t)); //step response
plotresp(u,t,C,'Unit step response of the compensated system');

subplot(2,1,2);
t = 0:0.02:8;
plotresp(t,t,C,'Unit step response of the compensated system');
