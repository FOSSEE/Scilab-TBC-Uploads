// Example A-9-16
// Controllability and pole zero cancellation

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "<path to dependencies>";
// exec("transferf.sci");


A = [-3 1; -2  1.5];
B = [1; 4];
C = [1 0];
D = 0;
Cc = cont_mat(A,B); disp(Cc,'state controllability matrix =');
disp(det(Cc), 'det(Cc) = '); 

Htf = transferf(A,B,C,D); disp(Htf,'Reduced transfer function =');
e = spec(A);              disp(e,'Eigen values = ');
D = poly(e,'s');   disp(D,'actual denominator (characteristic poly) =');
 