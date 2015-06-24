printf("\t example 20.2 \n");
printf("\t approximate values are mentioned in the book \n");
T1=150; // F
T2=220; // F
L=0.6; // ft
N=7500; // rev/hr
row=62.5; // lb/ft^3
mu=1.06; // at 150 F and from fig 14, lb/ft*hr
k=0.38; // Btu/(hr)*(ft^2)*(F/ft), from table 4
c=1; // Btu/(lb)*(F)
Rej=(L^2)*(N)*(row)/(mu);
printf("\t Rej is : %.1e \n",Rej);
Z=1; // Z=(mu/muw)^(0.14), regarded as 1 for water
Dj=1.01; // ft, from table 11
j=1700; // fig 20.2
hi=((j)*(k/Dj)*((c*mu/k)^(1/3))*(Z)^(0.14));
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
hoi=1500; // Btu/(hr)*(ft^2)*(F)
Uc=((hi*hoi)/(hi+hoi)); // from eq 6.38
printf("\t Uc is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=0.005;
hd=(1/Rd);
printf("\t hd is : %.0f \n",hd);
UD=((Uc*hd)/(Uc+hd));
printf("\t UD is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Q=32600;
A=(Q/(UD*(T2-T1)));
printf("\t Area is : %.2f ft^2 \n",A);
a=0.1309; // ft^2/ft
a1=(3.14*0.8*a);
printf("\t area per turn is : %.3f ft^2 \n",a1);
n=(A/a1);
printf("\t number of turns : %.1f \n",n);
// end
