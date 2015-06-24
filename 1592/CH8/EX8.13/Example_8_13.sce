//Scilab Code for Example 8.13 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms z1;
z=%z;
H=poly(0,'z');
H=z*(z+0.5)*(z+0.25)/((z-0.5)*(z-0.25)*(z-0.125));
H1=denom(H);
a=roots(H1)
h1=(z1+0.5)*(z1+0.25)/((z1-0.5)*(z1-0.25)*(z1-0.125))*(z1-a(1));
h2=(z1+0.5)*(z1+0.25)/((z1-0.5)*(z1-0.25)*(z1-0.125))*(z1-a(2));
h3=(z1+0.5)*(z1+0.25)/((z1-0.5)*(z1-0.25)*(z1-0.125))*(z1-a(3));
A=z*limit(h1,z1,a(1))/(z-a(1));
B=z*limit(h2,z1,a(2))/(z-a(2));
C=z*limit(h3,z1,a(3))/(z-a(3));
Z=A+B+C;
disp(Z,'Parallel Form Realisation:  H(z)');
