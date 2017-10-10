s=%s
syms Vi C1 R1 L C2 R2
V1=Vi/(1+s*C1*R1)
V2=I*(R2+s*L+(1/(s*C2)))
V2=k*V1
k*Vi/(1+s*C1*R1) == I*(R2 + s*L + (1/(s*C2)))

disp((k*s*C2)/((1+s*C1*R1)*(1+s*C2*R2+(s^2)*L*C2)),'I/Vi=')