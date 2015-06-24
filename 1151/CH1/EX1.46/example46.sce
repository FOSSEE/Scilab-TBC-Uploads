//to find transfer function using mason gain formula

printf("syms G1 G2 G3 G4 H1 H2 \n //gains of forward paths\n P1=G1*G2*G3;//forward path1 gain\n P2=G4;//forward path2 gain\n //gain of individual loops\n L1=-G2*H1;\n L2=-G1*G2*H1;\n L3=-G2*G3*H2;\n //there are no two non touching loops\n //since all the loops touches the forward path1 and loop 1,2,3 do not touch forward path 2\n d1=1;\n d2=1-(L1+L3+L2);\n G=(P1*d1+P2*d2)/d2;\n transfer function C/R=G")
