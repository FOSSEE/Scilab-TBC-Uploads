printf("\t example 6.2 \n");
printf("\t approximate values are mentioned in the book \n");
T1=300; // inlet hot fluid,F
T2=200; // outlet hot fluid,F
t1=190; // inlet cold fluid,F
t2=220; // outlet cold fluid,F
n=6; // number of parallel streams
P=((T2-t1)/(T1-t1));
printf("\t P is : %.3f \n",P);
R=((T1-T2)/((n)*(t2-t1)));
printf("\t R is : %.3f \n",R);
gama=((1-P)/((2.3)*((n*R)/(R-1))*log10(((R-1)/R)*(1/P)^(1/n)+(1/R)))); // using eq.6.35a
printf("\t gama is : %.3f \n",gama);
delt=(gama*(T1-t1)); // true temperature difference,F
printf("\ true temperature difference is : %.1f F \n",delt);
//end
