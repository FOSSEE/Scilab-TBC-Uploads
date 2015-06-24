
Adm=100;
printf("Gain of an difference amplifier Adm=(1+(R2/R1))/(1+(R3/R4))\n");
printf("Let (R2/R1)=A and (R3/R4)=B\n");
printf("Therefore Adm=(1+A)/(1+B)\n");
printf("A=Adm,");
printf("gives B=1/Adm\n");
A=Adm;
B=1/Adm;
printf("By suitable selection of resistors say R1=R2=1 Kohm");
R1=1;//in Kohm
R3=1;
R2=Adm*R1;
R4=Adm*R3;
printf("\nRESULTS:\n");
printf("Reasonable set of resistors R1=%d Kohm,R2=%d Kohms,R3=%d Kohm,R4=%d Kohms.",R1,R2,R3,R4);
