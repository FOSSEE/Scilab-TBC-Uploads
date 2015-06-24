//Example 12.1
clc
syms Gc G1 G2 G3 H1 H2 R U1;
G=Gc*G1*G2*G3*H1*H2;
g=Gc*G1*G2*G3/(1+G);
disp(g,'C/R=')
g1=G2*G3/(1+G);
disp(g1,'C/U1=')
g2=G3*H1*H2/(1+G);
disp(g2,'B/U2=')
C1=g*R;
C2=g1*U1;
disp(C1+C2,'C=')
