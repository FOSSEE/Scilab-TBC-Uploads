//chapter 17
//example 17.10
//page 737
printf("\n")
printf("given")
R1=60.4*10^3;R4=1.21*10^3;C=.012*10^-6;R2=121*10^3;
Q=sqrt((R1+R4)/(2*R4))
fo=Q/(3.14*C*R2);
printf(" center frequency is %3.2fHz\n",fo)
BW=fo/Q;
printf(" bandwidth is %3.1fHz\n",BW)