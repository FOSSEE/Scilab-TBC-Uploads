// Example A-9-17
// Controllability observability and pole zero cancellation

clear; clc;
xdel(winsid());  //close all windows


A = [0  1; -0.4  -1.3];
B = [0; 1];
C = [0.8 1];
D = [0];
G1 = syslin('c',A,B,C,D); ssprint(G1);

G2 = syslin('c',A', C',B',D); ssprint(G2);

Cc1 = cont_mat(A,B); disp(Cc1,'state controllability matrix 1 =');
disp(det(Cc1), 'det(Cc1) = ');
Ob1 = obsv_mat(A,C); disp(Ob1,'observability matrix 1 =');
disp(det(Ob1),'det(Ob1)');
 
Cc2 = cont_mat(A',C'); disp(Cc2,'state controllability matrix 2 =');
disp(det(Cc2), 'det(Cc2) = ');
Ob2 = obsv_mat(A',B'); disp(Ob2 ,'observability matrix 2 =');
disp(det(Ob2),'det(Ob1)');

Htf = ss2tf(G1); disp(Htf,'Reduced transfer function =');
e = spec(A);              disp(e,'Eigen values = ');
D = poly(e,'s');   disp(D,'actual denominator (characteristic poly) =');
 