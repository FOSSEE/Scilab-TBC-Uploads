printf("\t example 20.7 \n");
printf("\t approximate values are mentioned in the book \n");
T1=284; // inlet hot fluid,F
T2=104; // outlet hot fluid,F
t1=86; // inlet cold fluid,F
t2=104; // outlet cold fluid,F
W=1000; // lb/hr
k=0.15; // thermal conductivity
L=10;
Beta=((2*k)/(500*(2/12))); // hoi=500Btu/(hr)*(ft^2)*(F) for water
printf("\t beta is : %.4f \n",Beta);
printf("\t for sand \n");
C=0.2; // Btu/(lb)*(F)
Q=((W)*(C)*(T1-T2)); // Btu/hr
printf("\t total heat required for sand is : %.1e Btu/hr \n",Q);
c=1;
w=(Q/(t2-t1));
printf("\t w is : %.0e lb/hr \n",w);
R=((W*C)/(w*c));
printf("\t R is : %.1f \n",R);
S=((T2-T1)/(t1-T1));
printf("\t S is : %.2f \n",S);
W1=(8.33*(k*L)/C); // ((W1*C)/(k*L))=8.33 from fig 20.20b for Beta=0
printf("\t rate per tube is : %.1f lb/hr \n",W1);
N1=(W/W1);
printf("\t number of tubes : %.0f \n",N1);
printf("\t for air assume hoi=9 and Beta=0.2 \n");
c1=0.25;
w1=(Q/(c1*(t2-t1)));
printf("\t w1 is : %.0e lb/hr \n",w1);
W2=(5.23*(k*L)/C); // ((W1*C)/(k*L))=5.23 from fig 20.20b for Beta=0.2
printf("\t rate per tube is : %.0f lb/hr \n",W2);
N2=(W/W2);
printf("\t number of tubes : %.0f \n",N2);
// end







