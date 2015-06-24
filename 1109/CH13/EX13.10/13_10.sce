clear;
clc;
z11=10;z22=20;z12=5;z21=5;
deltaz=(z11*z22)-(z12*z21);
A=z11/z12;
printf("(a)The ABCD parameters are:\n");
printf("  A = %f\n",A);
B=deltaz/z21;
printf("  B = %f ohms\n",B);
C=1/z12;
printf("  C = %f mho\n",C);
D=z22/z21;
printf("  D = %f\n\n",D);
Z3=z21;
Z1=z11-Z3;
Z2=z22-Z3;
printf("(b)The equivalent T-network:\n");
printf("  Z1 = %f ohms\n",Z1);
printf("  Z2 = %f ohms\n",Z2);
printf("  Z13 = %f ohms\n",Z3);



