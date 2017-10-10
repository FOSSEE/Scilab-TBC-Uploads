syms R1 R2 R3 C1 C2 C3 L1 L2 s;

T1=1/(R3*(R1+s*L1)*(R2+s*L2)*C1*C2*C3*s^3)

L1=-1/(s*(R1+s*L1)*C1);
L2=-1/(s*(R2+s*L2)*C1);
L3=1/(-(s*L2+R2)*s*C2);
L4=1/(-s*R3*C2)
L5=-1/(s*R3*C3)

delta=1-(L1+L2+L3+L4+L5)+(L1*L3 + L1*L4 + L1*L5 + L2*L4 + L2*L5 + L3*L5)-(L1*L3*L5)
del1=1;

TF=(T1*del1)/delta ;
disp(TF,"Vo/VI = ")


