// Example 5-3
// Step response of a linear System given in State Space
// Model (Multiple Input Multiple Output System)

clear; clc;
xdel(winsid()); //close all windows

A = [ -1 -1; 6.5 0];
B = [ 1 1; 1 0];
C = [ 1 0; 0 1];
D = [ 0 0; 0 0];
G = syslin('c',A,B,C,D);
Gtf = clean(ss2tf(G));
disp(Gtf,'Gtf = '); //transfer function matrix

N = 200;                      //No of points
t = linspace(0,10,N);
u1 = [ones(1,N) ; zeros(1,N)];
u2 = [zeros(1,N); ones(1,N) ];

y1 = csim(u1,t,G);           // find system response
y2 = csim(u2,t,G);

plot(t,y1);
xtitle('Unit Step Response: input = u1 (u2 = 0)','t Sec','Response');
xgrid(color('gray'));       // grid
legend('output: y1','output: y2');

scf(1);                      // new window
plot(t,y2);
xtitle('Unit Step Response: input = u2 (u1 = 0)','t Sec','Response');
xgrid(color('gray'));
legend('output: y1','output: y2');
 
 // We cannot use csim('step' , , ) because this option is only available
 // for SISO sytems