//determine the transfer function
printf("syms R1 R2 C1 C2\nz1=R2/(R2*C2*s+1);\n z2=(R1*C1*s+1)/(C1*s);\n g=z2/(z1+z2);Transfer function Eo(s)/Ei(s)=g")

