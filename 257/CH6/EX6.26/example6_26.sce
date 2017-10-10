syms R1 R2 R3 C1 C2 s;

T1=1/(R1*R2*R3*C1*C2*s^2)

L1=-1/(s*R1*C1);
L2=-1/(s*R2*C1);
L3=-1/(s*R2*C2);

delta=1-(L1+L2+L3+L4)+(L1*L3 + L1*L4)
del1=1;

TF=(T1*del1)/delta ;
disp(TF,"Vo/VI = ")


