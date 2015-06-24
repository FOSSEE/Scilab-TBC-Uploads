// Example 10-8
// Designing a controller using a minimum order observer

clear; clc;
xdel(winsid());  //close all windows
mode(0);

A = [0 1 0; 0 0 1; -6 -11 -6];
B = [0; 0; 1];
C = [1 0 0];
D = [0];
P = [-2 + %i*2*sqrt(3),-2 - %i*2*sqrt(3),-6];
Q = [-10 -10];  // observer poles

K = ppol(A,B,P)

// Observer design
Aaa = A(1,1)
Aab = A(1,2:$)
Aba = A(2:$,1)
Abb = A(2:$,2:$)

Ke = ppol(Abb',Aab',Q)'

Ba = B(1,1)
Bb = B(2:$,1)

Ahat = Abb - Ke*Aab;
disp(Ahat,'Ahat = Abb - Ke*Aab =');
Bh = Aba - Ke*Aaa;
disp(Bh,'Aba - Ke*Aaa =');
Chat = [zeros(1,2); eye(2,2)]
Dhat = [1; Ke]
Fhat = Bb - Ke*Ba;
disp(Fhat,'Fhat = Bb - Ke*Ba =');
