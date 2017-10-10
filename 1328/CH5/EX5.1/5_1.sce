printf("\t example 5.1 \n");
T1=300; // hot fluid inlet temperature,F
T2=200; // hot fluid outlet temperature,F
t1=100; // cold fluid inlet temperature,F
t2=150; // cold fluid outlet temperature,F
printf("\t for counter current flow \n");
delt1=T1-t2; //F
delt2=T2-t1; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
printf("\t for parallel flow \n");
delt1=T1-t1; // F
delt2=T2-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
//end
