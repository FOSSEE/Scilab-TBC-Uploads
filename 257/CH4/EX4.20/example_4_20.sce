syms i1 i2 R1 R2 C s L x1 x2 B1 B2 M K R
disp("loop equations are")
V=i1*(R1+R2)+1/C*('i1-i2')/s-i2*R2
disp(V)
zero=L*s*i2+i2*R2-i1*R2+(i1-i2)/(C*s)
disp(zero)

//force-voltage method
F=V;
M=L;
K=1/C;
B=R;
disp("F-V equtions are")
F=s*x1*(B1+B2)+K*(x1-x2)-s*x2*B2
disp(F)
zero=M*s^2*x2+B2*(x2-x1)*s+K*(x2-x1)
disp(zero)