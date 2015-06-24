//to find transfer function using mason gain formula

printf("syms G1 G2 G3 G4 G5 G6 H1 H2 \n //gains of forward paths\n P1=G1*G2*G3*G6;//forward path1 gain\n P2=G1*G2*G4*G6;//forward path2 gain\nP3=G1*G2*G5*G6;//forward path3 gain\n //gain of individual loops\n L1=-G1*H1;\n L2=-G1*G2*G3*H2;\n L3=-G1*G2*G4*H2;\n L4=-G1*G2*G5*H2;\n //NO TWO NON TOUCHING LOOPS ARE THERE\n d1=1;\n d2=1;\n d3=1;\n d=1-(L1+L2+L3+L4);\n G=(P1*d1+P2*d2+P3*d3)/d;\ntransfer function C/R=G")
