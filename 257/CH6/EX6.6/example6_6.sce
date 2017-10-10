syms G1 G2 G3 G4 G5 H1 H2 H3 H4 H5;

T1=G1*G3*G4*G5*G2;

L1=-G1*H1;
L2=-G3*H3;
L3=-G2*H2*G1*G3;
L4=-G4*H4;
L5=-G5*H5;

delta=1-(L1+L2+L3+L4+L5)+(L1*L2+L1*L5+L1*L4+L2*L5+L3*L5)-(L1*L2*L5)
del1=1;

TF=(T1*del1)/delta ;
disp(TF,"C/R = ")


