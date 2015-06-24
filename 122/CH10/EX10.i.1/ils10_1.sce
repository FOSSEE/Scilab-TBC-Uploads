// Illustration 10.1
// Designing a regulator using a minimum order observer

// Section 10-6 of the book

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "<path to dependencies>";
// exec("minorder.sci");

function smallplot(i)
  subplot(3,2,i);xgrid(color('gray'));
  plot(t,x(i,:));
endfunction


A = [0 1 0; 0 0 1; 0 -24 -10];
B = [0; 10; -80];
C = [1 0 0];
D = [0];
Gp = syslin('c',A,B,C,D);

// Trial 1
disp('trial 1')
P = [-1 + %i*2,-1 - %i*2,-5 ] 
Q = [-10 -10]  // observer poles

// Determining gains K and Ke
// Determining observer controller transfer function
[K Ke Go ch] = minorder(A,B,P,Q);
K
Ke
disp(Go,'observer controller transfer function =');
disp(ch,'overall system characteristic equation =');
disp(roots(Go.den),'observer controller has unstable root!');

disp('trial 2'); // Trial 2;
P
Q = [-4.5 -4.5]; // change Q
[K Ke Go ch AA] = minorder(A,B,P,Q);
K
Ke
disp(Go,'observer controller transfer function =');
disp(ch,'overall system characteristic equation =');
disp(roots(Go.den),'observer controller has all stable roots!');

// system response to initial conditions 
x0 = [1; 0; 0; 1; 0];
G = syslin('c',AA,[1 ;0 ;0 ;0 ;0],[1 0 0 0 0],[0],x0);

t = 0:0.01:8;
u = zeros(1,length(t));
[y x] = csim(u,t,G);

smallplot(1);
xtitle('Response to initial condition','t (sec)','x1');
smallplot(2);
xtitle('Response to initial condition','t (sec)','x2');
smallplot(3);
xtitle('','t (sec)','x3');
smallplot(4);
xtitle('','t (sec)','e1');
smallplot(5);
xtitle('','t (sec)','e2');

scf();
// Bode diagram
O = Go*Gp; C = O /. 1;
bode([O;C],0.001,100,['Open loop system'; 'Closed loop system']);
disp(p_margin(O),'Phase margin');