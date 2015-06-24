printf("\t example 18.6 \n");
Ts=300; 
t0=70;
c=0.25; // Btu/(lb)*(F)
k=0.3; // Btu/(hr)*(ft^2)*(F/ft)
row=103; // lb/ft^3
alpha=0.01164; // alpha=(k/(c*row)), ft^2/hr
theta=1;
lx=9/12;
ly=4.5/12;
lz=2.5/12;
h=4.1;
printf("\t values are approximately mentioned in the book \n")
X1=(4*alpha*theta)/(lx^2);
Z1=(2*k)/(h*lx);
printf("\t X1 is : %.4f \n",X1);
printf("\t Z1 is : %.3f \n",Z1);
X2=(4*alpha*theta)/(ly^2);
Z2=(2*k)/(h*ly);
printf("\t X2 is : %.4f \n",X2);
printf("\t Z2 is : %.3f \n",Z2);
X3=(4*alpha*theta)/(lz^2);
Z3=(2*k)/(h*lz);
printf("\t X3 is : %.3f \n",X3);
printf("\t Z3 is : %.3f \n",Z3);
printf("\t at centre (2*x/l) is zero \n");
Yx=0.98; // fig 18.12
Yy=0.75; // fig 18.12
Yz=0.43; // fig 18.12
printf("\t at surface (2*x/l) is one \n");
Yx1=0.325; // fig 18.12
Yy1=0.29; // fig 18.12
Yz1=0.245; // fig 18.12
printf("\t center of brick \n");
t1=Ts-(Yx*Yy*Yz*(Ts-t0));
printf("\t t1 is : %.1f F \n",t1);
printf("\t corner of brick \n");
t2=Ts-(Yx1*Yy1*Yz1*(Ts-t0));
printf("\t t2 is : %.1f F \n",t2);
printf("\t center of 9 by 4.5in face \n");
t3=Ts-(Yx*Yy*Yz1*(Ts-t0));
printf("\t t3 is : %.1f F \n",t3);
printf("\t center of 9 by 2.5in face \n");
t4=Ts-(Yx*Yy1*Yz*(Ts-t0));
printf("\t t4 is : %.0f F \n",t4);
printf("\t center of 4.5 by 2.5in face \n");
t5=Ts-(Yx1*Yy*Yz*(Ts-t0));
printf("\t t5 is : %.1f F \n",t5);
printf("\t middle of long edge \n");
t6=Ts-(Yx*Yy1*Yz1*(Ts-t0));
printf("\t t6 is : %.0f F \n",t6);
//end
