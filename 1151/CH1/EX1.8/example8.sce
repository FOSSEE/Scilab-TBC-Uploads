//find out transfer function of the system 

printf("syms K1 K2 M1 M2")
printf(" the differential equatios in laplace form are \n F(s)=M1*S^2*X1(s)+K1*X1(s)-K2*X2(s)")
printf("\n X1(s)=X2(s)*(s^2*M2+K1+K2)/K1 \n f=K1/((s^2*M2+K1+K2)*(K1+s^2*M1)-K1^2)\nTransfer function X2(s)/F(s)=f")
