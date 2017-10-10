syms G1 G2 G3 G4 G5 G6 H1 H2;

T1=G1*G2;
T2=G3*G4;
T3=G1*G6*G4;
T4=G2*G3*G5

L1=-G2*H1;
L2=-G3*H2;
L3=G5*G6;
L4=-G4*H1*G6;
L5=-G1*G6*H2

delta=1-(L1+L2+L3+L4+L5)+(L1*L2)
del1=1;
del2=1;
del3=1
del4=1;

TF=(T1*del1 + T2*del2 + T3*del3 + T4*del4)/delta ;
disp(TF,"C/R = ")


