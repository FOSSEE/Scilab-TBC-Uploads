syms G1 G2 G3 G4 G5 H1 H2 H3 H4 H5 H6;

T1=G1*G3*G2*G4*G5;
T2=G1*G3*G5*G4;
T3=G4*G2*G1*G5;
T4=-G4*G2*G5*G1*H2

L1=-G2*H2;
L2=-G4*H4;
L3=-G5*H5;
L4=-G4*G5*H6*G2*G3;
L5=-G2*G4*G5*H6;
L6=-H1;
L7=-H3;

delta=1-(L1+L2+L3+L4+L5+L6+L7)+(L1*L2+L1*L3+L6*L2+L6*L3+L7*L2+L7*L3+L6*L7)-(L6*L7*L2+L6*L7*L3)
del1=1;
del2=1-L6;
del3=1-L7;
del4=1;

TF=(T1*del1 + T2*del2 + T3*del3 + T4*del4)/delta ;
disp(TF,"C/R = ")


