// Example 10-5
// Design of servo system without integrator in the plant

clear; clc;
xdel(winsid());  //close all windows
mode(0);

function smallplot(i)
  subplot(3,2,i);xgrid(color('gray'));
  plot(t,x(i,:));
endfunction

// Plant
A = [0 1 0 0; 20.601 0 0 0; 0 0 0 1; -0.4905 0 0 0];
B = [0; -1; 0; 0.5];
C = [0 0 1 0];
J = [-1 + %i*sqrt(3) , -1 - %i*sqrt(3), -5, -5, -5];


// Error dynamics with the error as a state variable 

Ahat = [A zeros(4,1); -C 0];
Bhat = [B ; 0];
Khat = ppol(Ahat,Bhat,J)
K = Khat(1: $-1)
k1 = -Khat($) 

// Over all system with the error as a state variable 
A1 = Ahat - Bhat*Khat;
B1 = [zeros(4,1); 1];
C1 = [C , 0];
D1 = [0];
G = syslin('c',A1,B1,C1,D1);

t = 0:0.02:6;
u = ones(1,length(t));
[y ,x] = csim(u,t,G);

smallplot(1);
xtitle('x1','t (sec)','');
smallplot(2);
xtitle('x2','t (sec)','x2');
smallplot(3);
xtitle('','t (sec)','x3');
smallplot(4);
xtitle('','t (sec)','x4');
smallplot(5);
xtitle('','t (sec)','error');
