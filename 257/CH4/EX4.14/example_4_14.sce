syms M1 X1 B1 K X2 M2 B2 K3 K1 K2 C1 C2 C3 R1 R2 M3 X3 B3 I1 I2 I3 L3 L1 L2 R3

F=M1*X1*s^2 + B1*s*X1 + K*X1 + B2*(X1-X2)*s
zero=M2*X2*s^2 + B2*s*(X2-X1)+K3*X2+K2*(X2-X3)
zro=K2*(X3-X2)+M3*s^2*X3+B3*s*X3
disp(F)
disp(zero," 0 =")
disp(zro," 0 = ")

disp("F-V equations are")

V=L1*s*I1 + R1*I1 + R2*(I1-I2)+I1/(s*C1)
zero=L2*s*I2 + I2/(s*C3) + R2*(I2-I1)+(I2-I3)/(s*C2)
zro=(I3-I2)/(s*C2)+L3*s*I3+R3*I3
disp(V)
disp(zero)
disp(zro)