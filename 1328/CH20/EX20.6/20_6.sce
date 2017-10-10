printf("\t example 20.6 \n");
printf("\t approximate values are mentioned in the book \n");
T1=200; // inlet hot fluid,F
T2=100; // outlet hot fluid,F
t1=50; // inlet cold fluid,F
t2=100; // outlet cold fluid,F
R=((T1-T2)/(t2-t1));
printf("\t R is : %.0f \n",R);
V=((T1+T2-t1-t2)/(t2-t1))/(2);
printf("\t V is : %.1f \n",V);
u=120;
U=60;
F=((u*1)/(U*2));
printf("\t F is : %.0f \n",F);
E=1.1; // In Fig.20.18b for R = 2.0and F = l.O,the abscissa and ordinate intersect at E =1.10.
Z=(E/V);
printf("\t Z is : %.3f \n",Z);
deltD=0.783*V; // deltD/V=0.783, from fig 20.17
printf("\t deltD is : %.3f \n",deltD);
delt=(deltD*(t2-t1));
printf("\t delt is : %.1f \n",delt);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
// end
