//to find transfer function using mason gain formula

printf("syms a12 a23 a32 a34 a42 a44 a35 a52 a45\n");
printf("there are two forward paths:\n 1) x1 tox2 to x3 to x4 to x5\n 2) x1 to x2 to x3 to x5")
printf("\nP1=a12*a23*a34*a45;//forward path2 gain\nP2=a12*a23*a35;//forward path1 gain\n//gain of individual loops\nL1=a23*a32;\nL2=a23*a34*a42;\nL3=a23*a34*a45*a52;\nL4=a23*a35*a52;\nL5=a44;\n//gain of two non touching loops\ng1=L1*L5;\n g2=L4*L5;\n//since all the loops touches the forward path1 and loop 5 do not touch forward path 2\nd1=1;\nd2=1-L5;\n d=1-(L1+L2+L3+L4+L5)+(g1+g2);\nG=(P1*d1+P2*d2)/d;\ntransfer function x5/x1=G")
