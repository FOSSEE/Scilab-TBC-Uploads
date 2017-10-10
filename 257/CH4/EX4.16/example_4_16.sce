syms K1 K2 x1 x2 x3 B1 B2 M1 M2 V Q L C1 R i1 i2 i3 C2 L1 L2
disp("equilibrium equations are")
F=K1*(x1-x2)
disp(F)
zero=M1*s^2*x2+K1*(x2-x1)+B1*s*(x2-x3)
disp(zero)
zro=M2*s^2*x3+B2*s*x3+K2*x3+B1*s*(x3-x2)
disp(zro)

//force-voltage method
F=V;
X=Q;
M=L;
K=1/C;
B=R;
disp("F-V equations are")
V=s*(i1-i2)/C1
disp(V,"V = ")
zero=L1*s*i2+(i2-i1)/(s*C)+R1*(i2-i3)
disp(zero)
zro=L2*s*i3+R2*i3+i3/(s*C2)+R1*(i3-i2)
disp(zro)