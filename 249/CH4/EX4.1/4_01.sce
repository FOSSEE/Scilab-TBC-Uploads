clear
clc
// A+3*B gives 6C
a=1;b=3;c=6
 //Initial concentrations
 CAo=100;CBo=200;Cio=100
 //Final concentrations
 CA=40;
 // Find CB,XA,XB
 ea=(6-4)/4;
 XA=(CAo-CA)/(CAo+ea*CA);
 eb=(ea*CBo)/(b*CAo);
 XB=b*CAo*XA/CBo;
 CB=CBo*(1-XB)/(1+eb*XB);
 printf("\nRESULT\n")
printf("The final concentration of B(CB) is %f",CB)
printf("\n XA and XB are %f ,%f",XA,XB)
 