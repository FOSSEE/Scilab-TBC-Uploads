// Example A-10-17
// Design of quadratic optimal regulator system and finding the response

clear; clc;
xdel(winsid());  //close all windows
mode(0);

function smallplot(i)
  subplot(3,2,i);xgrid(color('gray'));
  plot(t,x(i,:));
endfunction

A = [0 1 0 0; 20.601 0 0 0; 0 0 0 1; -0.4905 0 0 0];
B = [0; -1; 0; 0.5];
C = [0 0 1 0];

Ahat = [A zeros(4,1); -C 0]
Bhat = [B ; 0]

Q = eye(5,5);Q(1,1) = 100
R = [0.01]

// solve the riccati equation
P = riccati(Ahat, Bhat*inv(R)*Bhat', Q,'c');
K = inv(R)*Bhat'*P
k1 = -K($);

AA = Ahat - Bhat*K
G = syslin('c',AA,[zeros(4,1); 1] , [C 0], [0]);
t = 0:0.05:10; 
u = ones(1,length(t));
[y,x] = csim(u,t,G);smallplot(1);

xtitle('x1','t (sec)','');
smallplot(2);
xtitle('x2','t (sec)','x2');
smallplot(3);
xtitle('','t (sec)','x3');
smallplot(4);
xtitle('','t (sec)','x4');
smallplot(5);
xtitle('','t (sec)','x5');

