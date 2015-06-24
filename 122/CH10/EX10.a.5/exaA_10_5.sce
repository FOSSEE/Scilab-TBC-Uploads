// Example A-10-5
// Feedback gain for moving eigen values

clear; clc;
xdel(winsid());  //close all windows
mode(0);

s = %s;
A = [0 1;-2 -3];
B = [0; 2];
C = [1 0];
E = [-3 -5]; // new eigen values

ch = det(s*eye(2,2) - A)
cf = coeff(ch);
a = cf(1: $-1)

chd = poly(E,'s'); 
cf2 =  coeff(chd);
alpha = cf2(1: $-1)

M = cont_mat(A,B)
W = [cf(2:$) ; 1 0]
T = M*W

Ti = inv(T); disp(Ti,'inv(T)');
K = (alpha - a) * Ti
