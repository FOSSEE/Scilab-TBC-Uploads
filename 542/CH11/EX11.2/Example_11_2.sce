//Example 11.2

clear;
clc;

printf("\tExample 11.2\n");

Pc=4700;  //Critical pressure in kN/m^2
Tc=508.1;  //critical temperature in K
p1=100.666;  //in kN/m^2
T1=329.026;  //in K
T=350.874;  //in K

Tr1=T1/Tc;
Pr1=p1/Pc;
printf("\nTr1 = %f \nPr1 = %f\n",Tr1,Pr1);

c5=-35+(36/Tr1)+(42*log(Tr1))-(Tr1^6);
c2=((0.315*c5)-log(Pr1))/((0.0838*c5)-log(Tr1));
c1=0.0838*(3.758-c2);
printf("\nc5 = %.4f \nc2 = %.4f \nc1 = %.4f\n",c5,c2,c1);

k9=-35*c1;
k10=-36*c1;
k11=(42*c1)+c2;
k12=-c1;

printf("\nk9 = %.3f \nk10 = %.3f \nk11 = %.4f",k9,k10,k11);
printf("\nk12 = %.5f\n",k12);

Tr=T/Tc;
Pr=exp(k9-(k10/Tr)+(k11*log(Tr))+(k12*Tr^6));
p0=Pc*Pr;
printf("\nPr = %f \n\nP0 = %.2f kN/m^2\n",Pr,p0);

//End