syms G1 G2 G3 G4 G5 G6 G7 G8;

T1=G1*G8*G7*G5*G6;
T2=G1*G2*G3*G4*G8;

L1=-G6*H5;
L2=-G3*H3;

delta=1-(L1+L2)+(L1*L2)
del1=1-L2;
del2=1-L1;

TF=(T1*del1 + T2*del2)/delta ;
disp(TF,"C/R = ")


