syms R2 R1 C

Eo= I*(1+R2*C*s)/(s*C)
Ei= I*(R1+R2+(1/(s*C)))

disp(Eo/Ei,'transfer function=')
