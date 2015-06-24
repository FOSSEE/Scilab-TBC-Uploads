//to find transfer function using mason gain formula

printf("syms G1 G2 G3 G4 H1 H2 H3 H4\n//gains of forward paths\nP1=G1*G2*G3*G4;//forward path1 gain\nP2=G1*G5;//forward path2 gain\n//gain of individual loops\nL1=-G1*H1;\nL2=-G3*H2;\nL3=-G1*G2*G3*H3;\nL4=-H4;\n//gain of two non touching loops\ng1=G1*G3*H1*H2;\ng2=G1*H1*H4;\ng3=G3*H2*H4;\ng4=G1*G2*G3*H2*H4;\n//gain of three non touching loops\nl1=-G1*G3*H1*H2*H4;\n//since all the loops touches the forward path1 and loop 2 do not touch forward path 2\nd1=1;\nd2=1-L2;\nd=1-(L1+L2+L3+L4)+(g1+g2+g3+g4)-l1;\nG=(P1*d1+P2*d2)/d;\ntransfer function C/R=G")