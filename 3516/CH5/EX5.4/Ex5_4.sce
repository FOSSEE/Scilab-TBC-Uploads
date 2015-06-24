printf("\t example 5.4 \n");
printf("\t process is isothermal with hot fluid so temperature of hot fluid remains constant \n");
T1=300; // hot fluid inlet temperature,F
T2=300; // hot fluid outlet temperature,F
t1=100; // cold fluid inlet temperature,F
t2=275; // cold fluid outlet temperature,F
printf("\t for counter current flow \n");
delt1=T1-t2; //F
delt2=T2-t1; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
printf("\t for parallel flow \n");
delt1=T1-t1; // F
delt2=T2-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
if(delt2==0);
    printf("\t denominator becomes infinity so LMTD becomes Zero \n");
    printf("\t LMTD is Zero \n");
else
    LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
    end
printf("\t these are identical \n");
//end
