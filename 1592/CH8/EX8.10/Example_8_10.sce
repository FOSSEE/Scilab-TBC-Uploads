//Scilab Code for Example 8.10 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms s1;
s=%s;
H=poly(0,'s');
H=s^3/(s^3+6*s^2++11*s+6);
H1=denom(H);
a=roots(H1);
H2=5*(s1^3/(s1-a(1)))*(s1/(s1-a(2)))*(s1/(s1-a(3)));
disp(H2,'(ii) Cascade Form: H(s)');
h1=s1^3*(s1-a(1))/((s1+1)*(s1+2)*(s1+3));
h2=s1^3*(s1-a(2))/((s1+1)*(s1+2)*(s1+3));
h3=s1^3*(s1-a(3))/((s1+1)*(s1+2)*(s1+3));
A = limit(h1,s1,a(1))/(s-a(1));
B = limit(h2,s1,a(2))/(s-a(2));
C = limit(h3,s1,a(3))/(s-a(3));
Z=5*(1+A+B+C);
disp(Z,'(iii)Parallel Form Realization: H(s)');
