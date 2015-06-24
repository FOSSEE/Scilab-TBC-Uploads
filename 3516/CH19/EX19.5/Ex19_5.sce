printf("\t example 19.5 \n");
Q=500000;
printf("\t approxiate values are mentioned in the book \n");
a=(3.5+(3.14*4*(120/360)))/(2); // a=(alpha*Acp) from fig 19.17
AR=(3+3.6+3);
printf("\t a is : %.2f ft^2/ft \n",a);
printf("\t AR is : %.1f ft^2/ft \n",AR);
// Arbitrarily neglecting end wa.lls and also .the side wall refractory over 3'0" above the floor
R=(AR/a);
printf("\t ratio of two areas is : %.2f \n",R);
eG=0.265;
TG=1174; // F
TS=500; // F
f=0.56; // from fig 19.15 as (AR/Acpt)=2.49 and eG=0.265
q=15300; // at TG and TS,q=(Q/(a*f))
// However, the convection coefficient is small, 1.0 ± Btu/(hr)(ft2)("F), and AR/a is not 2.0 as in the assumptions for the Lobo and Evans equation.
q1=(q)-(7*(TG-TS)); // q1=(Q/(a*f))
printf("\t q1 is : %.2e Btu/(hr)*(ft^2) \n",q1);
q2=(q1*f); // q2=(Q/(a))
printf("\t q2 is : %.2e Btu/(hr)*(ft^2) \n",q2);
printf("\t convection rate basis \n");
q3=(1*(TG-TS)*(4.2/a)); // q2=(Q/(a))
printf("\t q3 is : %.1e Btu/(hr)*(ft^2) \n",q3); // calculation mistake in book
qt=(q2+q3); // qt=(Q/(a))
printf("\t qt is : %.2e Btu/(hr)*(ft^2) \n",qt);
ar=(Q/qt);
printf("\t required a is : %.0f ft^2 \n",ar);
L=(ar/a);
printf("\t length required is : %.1f ft \n",L);
// end
