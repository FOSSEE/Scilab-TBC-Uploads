syms G1 G2 G3 G4 G5 G6 G7 G8 H1 H2;

T1=G1*G2*G3;
T2=G4*G5*G6;
T3=G1*G7*G6;
T4=G4*G8*G3;
T5=G4*G8*(-H2)*G7*G6;
T6=G1*G7*(-H1)*G8*G3;

L1=-G5*H1;
L2=-G2*H2;
L3=G7*G8*H1*H2;

delta=1-(L1+L2+L3)+(L1*L2)
del1=1-L1;
del2=1-L2;
del3=1
del4=1
del5=1
del6=1

TF=(T1*del1 + T2*del2 + T3*del3 + T4*del4 + T5*del5 + T6*del6)/delta ;
disp(TF,"C/R = ")


