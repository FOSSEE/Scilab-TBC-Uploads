//determine the transfer function
printf("syms R1 R2 C1 C2 \n z1=R1/(R1*C1*s+1);\n z2=(R2*C2*s+1)/(C2*s)\n g=z2/(z1+z2)\n Transfer function Eo(s)/Ei(s)= g")
