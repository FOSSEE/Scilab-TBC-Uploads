//find the transfer function using block diagram reduction
printf("syms R1 R2 C1 C2 \n l1=1/(1+R2*C2*s);//unity feedback\nl2=1/(s*C1); \n l3=1/R1;\n l4=s*C2;\n l5=1+R2*C2*s;\n g1=l1*l2;//cascading of blocks\ng2=g1/(1+g1*l4);//feedback configuration\n g3=l3*g2;//cascading of blocks\n g4=g3/(1+g3*l5);\nTransfer function Vo(s)/Vi(s)=g4")
