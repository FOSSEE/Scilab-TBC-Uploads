// Example 10-7
// Designing a controller using a full order observer

clear; clc;
xdel(winsid());  //close all windows
mode(0);

function smallplot(i)
  subplot(2,2,i);xgrid(color('gray'));
  plot(t,x(i,:));
endfunction
  
s = %s;
A = [0 1; 20.6 0];
B = [0; 1];
C = [1 0];
D = [0];
P = [-1.8 + %i*2.4 ,-1.8 - %i*2.4 ]; 
Q = [-8 -8];  // observer poles

K = ppol(A,B,P)
Ke = ppol(A',C',Q)'

// The transfer function of observer controller
A1 = A - B*K - Ke*C
M = s*eye(A1) - A1
UbyE = K * inv(M) * Ke;
disp(UbyE, 'U(s) / E(s) =');

// Plant dynamics
Gp = syslin('c',A,B,C,D);
disp('plant  dynamics'); ssprint(Gp);
YbyU = ss2tf(Gp)

// Observer controller dynamics
disp('observer controller dynamics (x = xbar) ,(u = y), (y = u)');
Goc = syslin('c',A1,Ke,-K,[0]);
ssprint(Goc);

// Overall System transfer funtion

GsFullsystem = UbyE * YbyU /. 1

// Overall System
x0 = [1; 0; 0.5; 0];  // initial state
As = [A-B*K, B*K ; zeros(2,2) , A-Ke*C];
Gss = syslin('c',As,[1;0;0;0], [1 0 0 0], [0],x0);

// Unit step response
t = 0:0.01:4;
u = zeros(1,length(t));
[y x] = csim(u,t,Gss);

smallplot(1);
xtitle('Response to initial condition','t (sec)','x1');
smallplot(2);
xtitle('Response to initial condition','t (sec)','x2');
smallplot(3);
xtitle('','t (sec)','e1');
smallplot(4);
xtitle('','t (sec)','e2');