printf("\t example 5.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=300; // hot fluid inlet temperature,F
T2=200; // hot fluid outlet temperature,F
t1=100; // cold fluid inlet temperature,F
t2=275; // cold fluid outlet temperature,F
printf("\t for counter current flow \n");
deltc=T2-t1; //F
delth=T1-t2; // F
printf("\t delth is : %.0f F \n",delth);
printf("\t deltc is : %.0f F \n",deltc);
LMTD=((delth-deltc)/((2.3)*(log10(delth/deltc))));
printf("\t LMTD is :%.1f F \n",LMTD);
//end
