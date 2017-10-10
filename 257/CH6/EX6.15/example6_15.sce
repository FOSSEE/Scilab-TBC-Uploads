syms G1 G2 G3 G4 H1 H2 ;

T1=G1*G3*G2;
T2=G1*G4;

L1=-G1*G2*H1;
L2=-G3*G2*H2;
L3=-G4*H2;
L4=G5*G3*G2
L5=-G1*G4

delta=1-(L1+L2+L3+L4+L5)
del1=1;
del2=1;

TF=(T1*del1 + T2*del2)/delta ;
disp(TF,"C/R = ")


