//acids and bases//
//example 2.1//
//(a)//
N1=1/1000;//normality of HCl//
a=100;//percentage of ionization//
C1=N1*a/100;
printf("The concentration of H+ ion in HCl solution is %fg.ion/lit",C1);
pH1=-log10(C1);
printf("\nThe pH of N/1000 HCl solution is %f",pH1);
N2=1/10000;//normality of NaOH solution//
C2=N2*a/100;
C2a=C2/10^-4;
printf("\nThe concentration of OH- ions in N/10000 NaOH solution is %f*10^-4g.ion/lit",C2a);
k=10^-14;//dissociation constant of water//
H2=k/C2;
H2a=H2/10^-10;
printf("\nThe H+ concentration in N/10000 NaOH solution is %f*10^-10g.ion/lit",H2a);
pH2=-log10(H2);
printf("\nThe pH of the N/10000 solution is %f",pH2);
N3=1/1000;//normality of NaOH solution//
C3=N3*a/100;
C3a=C3/10^-3;
printf("\nThe concentration of OH- ions in N/1000 NaOH solution is %f*10^-3g.ion/lit",C3a);
H3=k/C3;
H3a=H3/10^-11;
printf("\nThe H+ concentration in N/1000 NaOH solution is %f*10^-11g.ion/lit",H3a);
pH3=-log10(H3);
printf("\nThe pH of the N/1000 solution is %f",pH3);
//(b)//
N=0.1;//normality of given weak base//
pH=9;//pH of the base//
H=10^(-pH);
Ha=H/10^-9
printf("\nH+ concentration of the weak base is %f*10^-9g.ion/lit",Ha);
OH=k/H;
OHa=OH/10^-5;
printf("\nOH- concentration of the base is %f*10^-5g.ion/lt",OHa);
a1=OH/N;
a1b=a1/10^-4;
printf("\nDegree of ionization of given weak base is %f*10^-4",a1b);