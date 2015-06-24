printf("\t example 7.5 \n");
printf("\t approximate values are mentioned in the book \n");
T1=175; // inlet hot fluid,F
T2=150; // outlet hot fluid,F
t1=85; // inlet cold fluid,F
delt1=T2-t1; //F
printf("\t delt1 is : %.0f F \n",delt1);
U=15; // assumption,Btu/(hr)*(ft^2)*(F)
theta=8000; // operating hours,hr
CW=(0.01/8300); // water cost,$/lb
printf("\t For annual charges assume 20 per cent repair and maintenanc.e and 10 per cent depreciation \n");
CF=(0.3*4); // annual fixed charges/ft^2
c=1; // Btu/(lb)*(F)
X=((U)*(theta)*(CW)/(CF*c));
printf("\t X is : %.4f \n",X);
Y=((T1-T2)/delt1);
printf("\t Y is : %.2f \n",Y);
A=0.96; // A=(delt2/delt1), from fig 7.24
delt2=0.96*delt1;
printf("\t delt2 is : %.1f F \n",delt2);
t2=T1-delt2; // F
printf("\t t2 is : %.1f F \n",t2);
//end
