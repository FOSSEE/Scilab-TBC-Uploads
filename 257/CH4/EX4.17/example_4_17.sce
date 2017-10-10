syms xo D1 K1 D2 K2 x1 s C1 C2 R1 R2
zero=xo*(s*D1+K1+D2*s+K2)-x1*(D1*s+K1)
disp((D1*s+K1)/(s*D1+K1+D2*s+K2),"xo/x1 = ")

E1=i1*(R1+1/(s*C1)+R2+1/(s*C2))
Eo=i1*(R2+1/(s*C2))
disp(Eo/E1,"Eo/E1 = ")