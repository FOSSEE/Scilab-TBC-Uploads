clc;
s = %s;
syms t;
num = 32;
den = s*(s^2+12*s+32);
y = syslin('c',num/den);
disp(y);

[A] = pfss(y);G = 0;disp(A);
for k = 1:size(A)
    f(k) = ilaplace(A(k),s,t);
    G = G + f(k);
end

disp(G)


