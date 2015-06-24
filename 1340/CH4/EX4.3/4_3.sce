clc;
s = %s;
G = syslin('c',36/(s^2+4.2*s+36));
disp(G,"G(s)=");
K = denom(G);
coef = coeff(K);
disp(coef);
Wn = sqrt(coef(1,1));
disp(Wn,"Undamped Natural Frequency =");
zeta = coef(1,2)/(2*Wn);
disp(zeta,"damping ratio =")
