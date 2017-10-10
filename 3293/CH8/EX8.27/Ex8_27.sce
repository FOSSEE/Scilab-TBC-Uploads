//page 304
//Example 8.27
clc;
clear;
close;
disp('Unitary and orthogonal matrices');
//part a
disp('A = ');
disp('[c]');
disp('A is orthogonal if c = +1 or -1');
disp('A is unitary if absolute value of c is 1, i.e. |c| = 1');
disp('-------------------------------------------------');
//part b
disp('A = ');
disp('a    b');
disp('c    d');
disp('A is orthogonal if, ');
disp('A'' = inv(A)');
disp('inv(A) = 1/(ad - bc) * X');
disp('where X = ');
disp(' d    -b');
disp('-c     a');
disp('Determinant of orthogonal matrices is +1 or -1');
disp('So A is orthogonal if,');
disp(' a   b');
disp('-b   a');
disp('or');
disp('a    b');
disp('b   -a');
disp('where, a^2 + b^2 = 1');
//part d
disp('A is unitary if,');
disp('A'' = inv(A)');
disp('inv(A) = 1/(ad - bc) * X');
disp('where X = ');
disp(' d    -b');
disp('-c     a');
disp('Determinant of unitary matrices is +1 or -1');
disp('So, A is unitary if,');
disp('A = ');
disp('a                                b');
disp('-(e^i*x)*b_bar       (e^i*x)*a_bar');
disp('A = ');
disp('1    0                *            a         b');
disp('0    e^(i*x)                    -b_bar     a_bar');
disp('where x ia real number, and a,b are complex nos.');
disp('|a|^2 + |b|^2 = 1');
disp('-----------------------------------');
//part c
disp('A = ');
disp('cos(thetha)         -sin(thetha)');
disp('sin(thetha)          cos(thetha)');
disp('A is orthogonal.');
disp('If thetha is real, then A is unitary.');
//end
