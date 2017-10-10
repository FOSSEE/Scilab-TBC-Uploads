syms R1 R2 I1 I2 C V1 VI L s Vo;

T1=L/(R1*R2*C)

L1=-1/(s*R1*C);
L2=-1/(s*R2*C);
L3=-(s*L)/R2;

delta=1-(L1+L2+L3)+(L1*L3)
del1=1;

TF=(T1*del1)/delta ;
disp(TF,"Vo/VI = ")


