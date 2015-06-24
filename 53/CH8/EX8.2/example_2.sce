
Adm=100;
printf("Adm=100=10*10,therefore it requires(R2/R1)=10 Kohms and (R4/R3)=10 Kohms\n")
printf("Therefore if R1=R3=10 Kohms, then R2=R4=100 kohms\n");
R1=10;//in Kohms
R2=100;
R3=10;
R4=100;
printf("Adm=(1+2(Rb/Ra))*R4/R3\n");
printf("(Rb/Ra)=B\n");
printf("Adm=(1+2*B)*R4/R3\n");
B=((Adm/(R4/R3))-1)/2;
printf("Rb/Ra=%1.1f\n",B);
printf("If Ra=10 Kohms\n");
Ra=10;//in kohms
Rb=B*Ra;
printf("\nRESULTS:\n");
printf("The value of resistors are R1=%d Kohms,R2=%d Kohms,R3=%d Kohms,R4=%d Kohms,Ra=%d Kohms,Rb=%d Kohms",R1,R2,R3,R4,Ra,Rb);