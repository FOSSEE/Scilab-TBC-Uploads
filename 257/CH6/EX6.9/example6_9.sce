syms G1 G2 G3 G4 G5 G6 G7 G8 H1 H2 H3 H4;

T1=G1*G2*G3*G5*G6*G4;
T2=G1*G2*G7*G6;
T3=G1*G2*G3*G4*G8

L1=-G4*H4;
L2=-G5*G6*H1;
L3=-G2*G3*G4*G5*H2
L4=-G2*G7*H2
L5=-G1*G2*G3*G4*G5*G6*H3
L6=-G1*G2*G6*G7*H3
L7=-G1*G2*G3*G4*G8*H3
L8=-G8*H1

delta=1-(L1+L2+L3+L4+L5+L6+L7+L8)+(L1*L4+L4*L8+L1*L6)
del1=1;
del2=1-L1;
del3=1

TF=(T1*del1 + T2*del2 + T3*del3)/delta ;
disp(TF,"C/R = ")


