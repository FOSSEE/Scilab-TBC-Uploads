printf("\t example 17.5 \n");
printf("\t approximate values are mentioned in the book \n");
T1=85;
T2=120;
R=0.93; // R=(L/G), for 1500 gpm
printf("\t for 120percent of design \n");
R1=1.2*R;
printf("\t R is : %.3f \n",R1);
H1=39.1; // at 87.2F
H2=H1+(R1*(T2-T1)); 
printf("\t H2 is : %.1f Btu \n",H2);
// The area between the saturation line and the operating line represents the potential for heat transfer
// at T=87.2F
Hs=53.1; // from table in the solution
d1=(Hs-H1);
printf("\t difference is : %.1f \n",d1);
//at t=90
Hs=56.7; // fig 17.12
H=42; // fig 17.12
d2=Hs-H;
printf("\t difference is : %.1f \n",d2);
d=(d1+d2)/(2);
printf("\t average of difference is : %.1f \n",d);
dT=(90-87.2); // F
nd1=(dT/d);
printf("\t nd1 is : %.3f \n",nd1);
// similarly calculating nd at each temperature and adding them will give you total nd value
nd=1.53;
printf("\t number of diffusing units : %.2f \n",nd);
printf("\t for 80 percent of design \n");
R2=0.8*R;
printf("\t R is : %.3f \n",R2);
H1=39.1; // at 87.2F
H2=H1+(R2*(T2-T1)); 
printf("\t H2 is : %.0f Btu \n",H2);
// The area between the saturation line and the operating line represents the potential for heat transfer
// at T=82.5F
Hs=47.2; // from table in the solution
d1=(Hs-H1);
printf("\t difference is : %.1f \n",d1);
//at t=85
Hs=50; // fig 17.12
H=40.8; // fig 17.12
d2=Hs-H;
printf("\t difference is : %.1f \n",d2);
d=(d1+d2)/(2);
printf("\t average of difference is : %.1f \n",d);
dT=(85-82.5); // F
nd1=(dT/d);
printf("\t nd1 is : %.3f \n",nd1);
// similarly calculating nd at each temperature and adding them will give you total nd value
nd=1.92;
printf("\t number of diffusing units : %.2f \n",nd);
X=[1.115 0.93 0.74];
Y=[1.53 1.70 1.92];
plot2d(X,Y,style=3,rect=[0.7,1.4,1.3,2]);
xtitle("KxaV/L vs L/G","L/G","nd");
printf("\t trial 1 \n");
R3=1.1;
printf("\t R is : %.3f \n",R3);
H1=34.5; // at 87.2F
H2=H1+(R3*(T2-T1)); 
printf("\t H2 is : %.0f Btu \n",H2);
// The area between the saturation line and the operating line represents the potential for heat transfer
// at T=85F
Hs=50; // from table in the solution
d1=(Hs-H1);
printf("\t difference is : %.1f \n",d1);
//at t=90
Hs=56.7; // fig 17.12
H=40; // fig 17.12
d2=Hs-H;
printf("\t difference is : %.1f \n",d2);
d=(d1+d2)/(2);
printf("\t average of difference is : %.1f \n",d);
dT=(90-85); // F
nd1=(dT/d);
printf("\t nd1 is : %.3f \n",nd1);
// similarly calculating nd at each temperature and adding them will give you total nd value
nd=1.48;
printf("\t number of diffusing units : %.2f \n",nd);
R3=1.19; // from fig 17.14
printf("\t L/G is : %.2f \n",R3);
printf("\t trial 2 \n");
R4=1.2;
printf("\t R4 is : %.3f \n",R4);
H1=34.5; // at 87.2F
H2=H1+(R4*(T2-T1)); 
printf("\t H2 is : %.1f Btu \n",H2);
// The area between the saturation line and the operating line represents the potential for heat transfer
// at T=85F
Hs=50; // from table in the solution
d1=(Hs-H1);
printf("\t difference is : %.1f \n",d1);
//at t=90
Hs=56.7; // fig 17.12
H=40.5; // fig 17.12
d2=Hs-H;
printf("\t difference is : %.1f \n",d2);
d=(d1+d2)/(2);
printf("\t average of difference is : %.1f \n",d);
dT=(90-85); // F
nd1=(dT/d);
printf("\t nd1 is : %.3f \n",nd1);
// similarly calculating nd at each temperature and adding them will give you total nd value
nd=1.56;
printf("\t number of diffusing units : %.2f \n",nd);
R3=1.08; // from fig 17.14
printf("\t L/G is : %.2f \n",R3);
// end
