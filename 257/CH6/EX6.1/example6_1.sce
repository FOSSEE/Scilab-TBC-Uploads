syms G1 G2 G3 G4 G5 G6 H1 H2;

T1=G1*G3*G4*G5*G6;
T2=G1*G2*G6;

L1=-G4*H1;
L2=-G3*G4*G5*H2;
L3=-G2*H2;

delta=1-(L1+L2+L3)+(L1*L3)
del1=1;
del2=1-L1

TF=(T1*del1 + T2*del2)/delta ;
disp(TF,"tf=")


