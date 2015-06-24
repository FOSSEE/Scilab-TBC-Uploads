printf("\t example 15.1 \n");
printf("\t approximate values are mentioned in the book \n");
ts=250;
T1=400;
T2=300;
w=10000; // lb/hr
W=150000; // lb/hr
l=945.3; // Btu/(lb) , table 7
Q=((w)*(l)); // Btu/hr
printf("\t total heat required for steam is : %.2e Btu/hr \n",Q);
C=0.63; // Btu/(lb)*(F)
Q=((W)*(C)*(T1-T2)); // Btu/hr
printf("\t total heat required for kerosene is : %.2e Btu/hr \n",Q); 
delt1=T2-ts; //F
delt2=T1-ts; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
UD=100;
A=(Q/(UD*LMTD));
printf("\t A : %.2e ft^2 \n",A);
WC=94500; // Btu/F
vl=0.017; // ft^3/lb, from table 7
vv=13.75; // ft^3/lb, from table 7
printf("\t By the law of mixtures \n");
// Assume 80 per cent of the outlet fluid is vapor
v2=(0.8*vv)+(.2*vl);
printf("\t v2 : %.0f ft^3/lb \n",v2);
vav=(WC*(v2-vl)/(UD*A))-((WC*(T2-ts)/(l*w))*(vv-vl))+vl;
printf("\t vav : %.2f ft^3/lb \n",vav);
printf("\t By the approximate method \n");
vav1=(vl+v2)/(2);
printf("\t vav : %.2f ft^3/lb \n",vav1);
row=62.5;
rowac=(1/vav);
s=(rowac/row);
printf("\t actual density : %.3f lb/ft^3 \n",rowac);
printf("\t s : %.4f \n",s);
rowap=(1/vav1);
s=(rowap/row);
printf("\t approximate density : %.3f lb/ft^3 \n",rowac);
printf("\t s : %.4f \n",s);
// end
