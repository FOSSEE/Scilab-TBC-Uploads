clc;
clear;
printf("\t\t\tChapter4_example7\n\n\n");
// properties of water at 68 degree fahrenheit from appendix table C11
rou=62.46;
cp=0.9988;
k=0.345;
alpha=k/(rou*cp);
printf("\nThe diffusivity at 68 degree fahrenheit is %.2e sq.ft/hr",alpha);
D=2.5/12;
L=4.75/12;
Vs=%pi*D^2*L/4;
As=(%pi*D*L)+(%pi*D^2)/2;
Lc=Vs/As;
printf("\nThe volume of the can is %.4f cu.ft",Vs);
printf("\nThe surface area of the can is %.3f sq.ft",As);
printf("\nThe characteristic length is %.3f ft",Lc);
hc=1.7;
Bi=hc*Lc/k;
printf("\nThe Biot number is %.3f",Bi);
t=4;
// for the cylinder solution
Fo_cylinder=alpha*t/(D/2)^2;
Bi_cylinder=hc*(D/2)/k;
printf("\nFor the cylinder, The Fourier number is %.2f and Biot Number is %.3f",Fo_cylinder,Bi_cylinder);
reciprocal_Bi_cylinder=1/Bi_cylinder;
printf("\nThe reciprocal for Biot number for cylinder is %.2f",reciprocal_Bi_cylinder);
dim_T_cylinder=0.175; //The value of dimensionless temperature of cylinder from figure 4.7a at corresponding values of Fo and 1/Bi
// for the infinite plate solution
Fo_plate=alpha*t/(L/2)^2;
Bi_plate=hc*L/(2*k);
printf("\nFor the infinite plate, The Fourier number is %.3f and Biot Number is %.2f",Fo_plate,Bi_plate);
reciprocal_Bi_plate=1/Bi_plate;
printf("\nThe reciprocal for Biot number for infinite plate is %.2f",reciprocal_Bi_plate);
dim_T_plate=0.55; //The value of dimensionless temperature of infinite plate from figure 4.7a at corresponding values of Fo and 1/Bi
// Table 4. I, for the short-cylinder problem, indicates that the solution is the product of the infinite-cylinder problem (Figure 4.7) and the infinite-plate problem (Figure 4.6).
// For short cylinder problem
dim_T_shortcylinder=dim_T_cylinder*dim_T_plate;
printf("\nThe value of dimensionless temperature for short cylinder is %.3f ",dim_T_shortcylinder);
T_inf=30;
T_i=72;
Tc=dim_T_shortcylinder*(T_i-T_inf)+T_inf;
printf("\nThe temperature at centre of can is %.1f degree celsius",Tc);
dim_Tw_cylinder=0.77; //The dimensionless temperature from figure 4.7b corresponding to the value of 1/Bi and r/R=1
dim_Tw_plate=0.65; //The dimensionless temperature from figure 4.6b corresponding to the value of 1/Bi and x/L=1
dim_Tw_shortcylinder=dim_Tw_cylinder*dim_Tw_plate;
printf("\nThe value of dimensionless temperature  at the wall for short cylinder is %.2f ",dim_Tw_shortcylinder);
Tw=dim_Tw_shortcylinder*(Tc-T_inf)+T_inf;
printf("\nThe wall temperature is %.1f degree F",Tw);

