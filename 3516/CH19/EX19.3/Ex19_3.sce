printf("\t example 19.3 \n");
Qr=1.5; // Qr=(QF2/QF1)
Cr=1.5; // Cr=(CR2/CR1)
Gr=140/125; // Gr=(G2/G1)
Qr1=0.38; // Qr1=(Q1/QF1)
printf("\t approxiate values are mentioned in the book \n");
a1=1.63; // a1=(G1*(CR1/27)^(1/2)), from eq 19.17
printf("\t a1 is : %.2f \n",a1);
a2=1.37*(a1); // a2=(G2*(CR2/27)^(1/2))
printf("\t a2 is : %.2f \n",a2);
Qr2=(1/(1+a2)); // Qr2=(Q2/QF2),from eq 19.15
printf("\t Qr2 is : %.2f \n",Qr2);
Q21=(Qr2/Qr1)*(Qr); // Q21=(Q2/Q1)
printf("\t ratio of heats is : %.2f \n",Q21);
printf("\t Hence the radiant absorption will be increased only 22 per cent for an increase of 50 per cent in the heat liberated. \n");
// end

