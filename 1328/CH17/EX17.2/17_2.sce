printf("\t example 17.2 \n");
printf("\t approximate values are mentioned in the book \n");
printf("\t by numerical integration \n");
T1=85;
T2=120;
A=576; // ground area, from fig 17.12
L=1500*(500/576);
G=1400;
R=(L/G);
printf("\t R is : %.2f \n",R);
H1=39.1; // fig 17.12
H2=H1+(R*(T2-T1));
printf("\t H2 is : %.1f Btu \n",H2);
// The area between the saturation line and the operating line represents the potential for heat transfer
// at T=85F
Hs=50; // fig 17.12
d1=(Hs-H1);
printf("\t difference is : %.1f \n",d1);
//at t=90
Hs=56.7; // fig 17.12
H=43.7; // fig 17.12
d2=Hs-H;
printf("\t difference is : %.1f \n",d2);
d=(d1+d2)/(2);
printf("\t average of difference is : %.1f \n",d);
dT=5; // F
nd1=(dT/d);
printf("\t nd1 is : %.3f \n",nd1);
// similarly calculating nd at each temperature and adding them will give you total nd value
nd=1.70;
printf("\t number of diffusing units : %.2f \n",nd);
printf("\t log mean enthalpy difference \n");
dt=49.9; // diff. of enthalpies at top of the tower, from table in solution
db=10.9; // diff of enthalpies at bottom of the tower,from table in solution
LME=(dt-db)/(2.3*log10(dt/db));
printf("\t log mean of enthalpy : %.1f Btu/lb \n",LME);
nd=(T2-T1)/(LME);
printf("\t number of diffusing units are : %.2f \n",nd);
// The error is naturally larger the greater the range
//end
