//to find transfer function using mason gain formula

printf("syms R1 R2 C1 C2 \n //gains of forward path\n P1=1/(R1*R2*C1*C2*s^2);//forward path1 gain\n //gain of individual loops\n L1=-1/(R1*C1*s);\n L2=-1/(R2*C1*s);\n L3=-1/(R2*C2*s);\n //gain of two non touching loops\n g1=1/(s^2*R1*R2*C1*C2);\n //since all the loops touches the forward path1 so\n d1=1\n d=1-(L1+L2+L3)+g1;\n G=(P1*d1)/d;\n transfer function C/R=G")
