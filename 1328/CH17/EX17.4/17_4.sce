printf("\t example 17.4 \n");
printf("\t approximate values are mentioned in the book \n");
// The area between the saturation line and the operating line represents the potential for heat transfer
// at T=79.3F
Hs=43.4; // fig 17.12
H=30.4; // fig 17.12
d1=(Hs-H);
printf("\t difference is : %.1f \n",d1);
//at t=85
Hs=50; // fig 17.12
H=35.7; // fig 17.12
d2=Hs-H;
printf("\t difference is : %.1f \n",d2);
d=(d1+d2)/(2);
printf("\t average of difference is : %.2f \n",d);
dT=(85-79.3); // F
nd1=(dT/d);
printf("\t nd1 is : %.3f \n",nd1);
// similarly calculating nd at each temperature and adding them will give you total nd value
nd=1.72;
printf("\t number of diffusing units : %.2f \n",nd);
// end
