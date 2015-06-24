//find out transfer function of the system 

printf("syms K1 K2 M1 M2 B12 fc1 fc2");printf(" the differential equations in laplace form are \n F(s)=X1(s)[s^2*M1+s*B12+s*fc1+K1]-B12*s*X2(s)")
printf("\n X1(s)=X2(s)*(s^2*M2+B12*s+s*fc2+K2)/(B12*s)\nf=B12*s/((s^2*M2+B12*s+s*fc2+K2)*(s^2*M1+B12*s+s*fc1+K1)-s^2*B12);\n Transfer function X2(s)/F(s)=f")
