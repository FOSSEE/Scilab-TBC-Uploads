printf("\t example 20.4 \n");
printf("\t approximate values are mentioned in the book \n");
T1=450; // inlet hot fluid,F
T2=150; // outlet hot fluid,F
t1=85; // inlet cold fluid,F
t2=100; // outlet cold fluid,F
W=3360; // lb/hr
w=11100; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for SO2 \n");
c=0.165; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for SO2 is : %.3e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for water is : %.3e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
R=20;
S=0.0412;
FT=0.98; // fig 18
delt=(FT*LMTD);
printf("\t delt is : %.0f F \n",delt);
Tc=((T2)+(T1))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f \n",tc);
printf("\t hot fluid:inner tube side, SO2 \n");
at=0.0512; // flow area, ft^2, table 11
printf("\t flow area is : %.4f ft^2 \n",at);
Gt=(W/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=0.041; // at 300F,lb/(ft)*(hr), fig 15
D=0.256; // ft, table 11
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.1e \n",Ret);
jH=790; // from fig.24
Z=0.006831; // Z=(k(c*mu/k)^(1/3)), Btu/(hr)*(ft)*(F/ft)
hi=((jH)*(Z/D)); //Hi=(hi/phyp),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.1f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=3.068; // ft
OD=3.5; // ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hio to the surface at the OD is : %.1f Btu/(hr)*(ft^2)*(F) \n",hio);
printf("\t cold fluid water \n");
L=8; // ft
G=(w/(2*L));
printf("\t G : %.0f lb/(hr)*(ft) \n",G);
mu1=1.94; // at 92.5F, lb/(ft)*(hr)
Re=(4*G/mu1);
printf("\t Re is : %.2e \n",Re);
Do=0.292; // ft
ho=(65*(G/Do)^(1/3));
printf("\t ho is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Uc=((ho*hio)/(ho+hio)); // from eq 6.38
printf("\t Uc is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=0.01;
hd=(1/Rd);
printf("\t hd is : %.0f \n",hd);
UD=((Uc*hd)/(Uc+hd));
printf("\t UD is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
A=(Q/(UD*(LMTD)));
printf("\t Area is : %.1f ft^2 \n",A); // calculation mistake in book
a=0.917; // ft^2/ft, table 11
l=(A/(a*8));
printf("\t pipe length : %.2f \n",l);
// end
