//Scilab Code for Example 8.8 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms R L C s I;
X=I*(R+1/(C*s));
Y=R*I;
Z=Y/X;
disp(Z,'(a)  RC High pass Filter: H(s)');
X=I*(L*s+1/(C*s));
Y=I/(C*s);
Z=Y/X;
disp(Z,'(b)  LC Low pass Filter: H(s)');
