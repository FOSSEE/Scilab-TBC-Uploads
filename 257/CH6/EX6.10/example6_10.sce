syms R C Vi s Vo;

T1=(s*R*C)
T2=1/(s*R*C);
T3=1

L1=-(s*R*C)
L2=-1/(s*R*C);
L3=-1;

delta=1-(L1+L2+L3)+(L1*L2)
del1=1;
del2=1-L1
del3=1

TF=(T1*del1 + T2*del2 + T3*del3)/delta ;
disp(TF,"Vo/VI = ")


