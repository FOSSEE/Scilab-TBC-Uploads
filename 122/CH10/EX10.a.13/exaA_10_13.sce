// Example A-10-13
// Designing a regulator using a minimum order observer

clear; clc;
xdel(winsid());  //close all windows
mode(0);

function smallplot(i)
  subplot(3,2,i);xgrid(color('gray'));
  plot(t,x(i,:));
endfunction


A = [0 0 1 0; 0 0 0 1; -36 36 -0.6 0.6; 18 -18 0.3 -0.3];
B = [0; 0; 1; 0];
C = [1 0 0 0; 0 1 0 0];
D = [0;0];
Gp = syslin('c',A,B,C,D);

Aab = A(1:2,3:$);
Abb = A(3:$,3:$);

P = [-2 + %i*2*sqrt(3),-2 - %i*2*sqrt(3),-10,-10 ] 
Q = [-15 -16]  // observer poles

K = ppol(A,B,P)
Ke = ppol(Abb',Aab',Q)'
Kb = K(3:$);

AA = [A - B*K , B*Kb; zeros(2,4) , Abb - Ke*Aab]

// system response to initial conditions 
x0 = [0.1; 0; 0; 0; 0.1; 0.05];
G = syslin('c',AA,zeros(6,1),zeros(1,6),[0],x0);

t = 0:0.01:4;
u = zeros(1,length(t));
[y x] = csim(u,t,G);

smallplot(1);
xtitle('Response to initial condition','t (sec)','x1');
smallplot(2);
xtitle('Response to initial condition','t (sec)','x2');
smallplot(3);
xtitle('','t (sec)','x3');
smallplot(4);
xtitle('','t (sec)','x4');
smallplot(5);
xtitle('','t (sec)','e1');
smallplot(6);
xtitle('','t (sec)','e2');
