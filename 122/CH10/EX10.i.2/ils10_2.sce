// Illustration 10.2
// Designing a control system with a minimum order observer

// Section 10-7 of the book

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// please edit the path
// cd "<path to dependencies>";
// exec("minorder.sci");
// exec("plotresp.sci");

s = %s;
t = 0:0.05:10;
u = ones(1,length(t));
Gp = syslin('c',1,s*(s^2 + 1));
Gs = cont_frm(1,s*(s^2 + 1)); 
A = Gs.A;
B = Gs.B;
C = Gs.C;
D = Gs.D;

// designing the observer controller
P = [-1 + %i,-1 - %i,-8 ] 
Q = [-4 -4]  // observer poles
[K Ke Go] = minorder(A,B,P,Q);
K
Ke
disp(Go,'observer controller transfer function =');

// First configuration
C1 = Go*Gp /. 1;
disp(C1,'closed loop system of first configuration =');
plotresp(u,t,C1,'Step response');

// Secoond Configuration
C = Gp /. Go;
N = 1 / horner(C,0)
C2 = syslin('c',N*C);
y = csim(u,t,C2);
disp(C2,'closed loop system of second configuration =');
plot(t,y,'r');
legend('step input','system 1','system 2');

// Bode diagram
scf();
bode([C1;C2],0.01,100,['system 1';'system 2']);
// frequency in Hz
