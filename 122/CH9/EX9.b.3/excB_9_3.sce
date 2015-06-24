// Exercise B-9-3
// Obtaining canonical form

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "<path to dependencies>";
// exec("transferf.sci");

A = [1 2; -4 -3];
B = [1;2];
C = [1 1];
D = 0;

[Ac Bc U ind] = canon(A,B);
U = -1*U;   // a correction
Cc = C*U;
disp(clean(Ac),'Ac = ');
disp(clean(Bc),'Bc = ');
disp(clean(Cc),'Cc = ');
disp(U,'transformation matrix U = ');
// Ac=inv(U)*A*U, Bc=inv(U)*B

// check
Htf1 = transferf(A,B,C,D);
Htf2 = transferf(Ac,Bc,Cc,D);
disp(Htf1,'Htf1 = ');
disp(Htf2,'Htf2 = ');


