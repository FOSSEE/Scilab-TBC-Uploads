// F = M*s^2 +K*X + B*X*s
syms s t V Q L C R I;
//force-voltage method
F=V;
X=Q;
M=L;
K=1/C;
B=R;

V=I*(s*L + 1/(s*C) + R);

disp("v = L*diff(i) + 1/C*int(i) + i*R")