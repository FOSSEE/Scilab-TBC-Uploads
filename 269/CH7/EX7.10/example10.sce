syms t
s=%s
disp('Heavisides expansion')
[A]=pfss((2*s^2+3*s+2)/((s+1)^3))
disp(A(1))