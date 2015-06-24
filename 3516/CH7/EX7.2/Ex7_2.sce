printf("\t example 7.2 \n");
printf("\t approximate values are mentioned in the book \n");
printf("\t considering 50F approach \n");
T1=350; //F
T2=250; //F
t2=T2-50; // formula for approach,f
printf("\t t2 is : %.0f F \n",t2);
printf("\t fluids are with equal ranges,so \n");
t1=t2-(T1-T2); // F
printf("\t t1 is : %.0f F \n",t1);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.0f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.2f \n",S);
printf("\t FT is 0.925 \n"); // from fig 18
printf("\t considering 0F approach \n");
T1=300; //F
T2=200; //F
t2=T2-0; // formula for approach,f
printf("\t t2 is : %.0f F \n",t2);
printf("\t fluids are with equal ranges,so \n");
t1=t2-(T1-T2); // F
printf("\t t1 is : %.0f F \n",t1);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.0f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.2f \n",S);
printf("\t FT is 0.80 \n"); // from fig 18
printf("\t considering 20F cross \n");
T1=280; //F
T2=180; //F
t2=T2+20; // formula for approach,f
printf("\t t2 is : %.0f F \n",t2);
printf("\t fluids are with equal ranges,so \n");
t1=t2-(T1-T2); // F
printf("\t t1 is : %.0f F \n",t1);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.0f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.3f \n",S);
printf("\t FT is 0.64 \n"); // from fig 18
//end
