syms G1 G2 G3 G4 G5  H2 H3;

T1=G1*G3*G2;
T2=G1*G3*G5;
T3=G4*G2*G3;
T4=-G4*G2*G5*G3*H2

L1=-G2*H3;
L2=-G3*H3;
L3=-G5*H2*H3*G3;
L4=-G1*G2*G3;
L5=-G1*G3*G5;
L6=-G2*G3*G4;
L7=G2*G3*G4*G5*H2;

delta=1-(L1+L2+L3+L4+L5+L6+L7)
del1=1;
del2=1;
del3=1
del4=1;

TF=(T1*del1 + T2*del2 + T3*del3 + T4*del4)/delta ;
disp(TF,"C/R = ")


