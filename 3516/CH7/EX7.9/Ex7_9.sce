printf("\t example 7.9 \n");
printf("\t approximate values are mentioned in the book \n");
T1=390; // F
t1=100; // F
U=69.3; // Btu/(hr)*(ft^2)*(F)
A=662; // ft^2
W=43800; // lb/hr
w=149000; // lb/hr
C=0.60; // Btu/(lb)*(F)
c=0.49; // Btu/(lb)*(F)
X=((U*A)/(w*c));
printf("\t X is : %.2f \n",X);
R=((w*c)/(W*C));
printf("\t R is : %.2f \n",R);
S=0.265; // from fig 7.25, by comparing X an R
t2=(t1)+((0.265)*(T1-t1)); // S=((t2-t1)/(T1-t1))
printf("\t t2 is : %.0f F \n",t2);
T2=((T1)-((R)*(t2-t1))); // R=((T1-T2)/(t2-t1))
printf("\t T2 is : %.0f F \n",T2);
// end
