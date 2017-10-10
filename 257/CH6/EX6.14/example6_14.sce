syms R1 s C1 R2 C2 Vi Vo I;

Z= (R1/(s*C1))/(R1+(1/(s*C1)))

Ei= Z*I + R2*I + I/(s*C2)
Eo= I*(R2 + 1/(s*C2))

disp(Eo/Ei, " Eo/Ei = ")