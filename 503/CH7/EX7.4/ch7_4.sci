// to find distance b/w brushes

clc;
S=28;
P=4;
U=8;
c=U*S/2;
y_c=2*(c-1)/P;
Y_c=55;
C=(P/2)*Y_c+1;
Y_cs=floor(S/P);
Y_b=Y_cs*U+1;
y_f=2*Y_c-Y_b;
d=C/P;
disp(d,'dis b/w brushes');