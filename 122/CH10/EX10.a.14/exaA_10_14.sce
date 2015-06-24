// Example A-10-14
// Designing a regulator using a minimum and full order observer

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "<path to dependencies>";
// exec("minorder.sci");

function smallplot(i)
  subplot(2,2,i);xgrid(color('gray'));
  plot(t,x(i,:));
endfunction

A = [0 1; 0 -2];
B = [0; 4];
C = [1 0];
D = [0];
Gp = syslin('c',A,B,C,D);

P = [-2 + %i*2*sqrt(3),-2 - %i*2*sqrt(3)]
Q1 = [-8 -8 ] 
Q2 = [-8];

disp('full order obssrver -');
K1 = ppol(A,B,P)
Ke1 = ppol(A',C',Q1)'

Go1 =transferf(A-B*K1-Ke1*C,Ke1,K1,[0]);
disp(Go1,'full order observer controller transfer function =');

// system response to initial conditions 
AA1 = [A - B*K1, B*K1; zeros(2,2), A - Ke1*C];
x0 = [1; 0; 1; 0];
G = syslin('c',AA1,zeros(4,1),zeros(1,4),[0],x0);

t = 0:0.05:8;
u = zeros(1,length(t));
[y x] = csim(u,t,G);
smallplot(1);
xtitle('Response to initial condition (Full order)','t (sec)','x1');
smallplot(2);
xtitle('Response to initial condition (Full order)','t (sec)','x2');
smallplot(3);
xtitle('','t (sec)','e1');
smallplot(4);
xtitle('','t (sec)','e2');

disp('minimal order observer -');
P
Q2
[K2 Ke2 Go2 ch AA2] = minorder(A,B,P,Q2);
K2
Ke2
disp(Go2,'minimal order observer controller transfer function =');

x0 = [1; 0; 1;];
G = syslin('c',AA2,zeros(3,1),zeros(1,3),[0],x0);

t = 0:0.05:8;
u = zeros(1,length(t));
[y x] = csim(u,t,G);
scf();
smallplot(1);
xtitle('Response to initial condition (minimal order)','t (sec)','x1');
smallplot(2);
xtitle('Response to initial condition (minimal order)','t (sec)','x2');
smallplot(3);
xtitle('','t (sec)','e');

scf();
// Bode diagram
C1 = Go1*Gp /. 1;
C2 = Go2*Gp /. 1;
bode([C1 ;C2],0.1,100,['System 1';'System 2']);
