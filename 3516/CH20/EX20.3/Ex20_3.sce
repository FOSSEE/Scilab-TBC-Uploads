printf("\t example 20.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=675; // inlet hot fluid,F
T2=200; // outlet hot fluid,F
t1=120; // inlet cold fluid,F
t2=140; // outlet cold fluid,F
W=33100; // lb/hr
w=510000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for oil \n");
c=0.64; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for oil is : %.2e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for water is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=230;
printf("\t LMTD is :%.0f F \n",LMTD);
Tc=((T2)+(T1))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.1f F \n",Tc);
tc=((t1)+(t2))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f \n",tc);
printf("\t hot fluid:inner tube side, oil \n");
at=0.0458; // flow area, ft^2, table 11
printf("\t flow area is : %.4f ft^2 \n",at);
Gt=(W/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=5.56; // at 400F,lb/(ft)*(hr)
D=0.242; // ft, table 11
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
jH=100; // from fig.24
Z=0.245; // Z=(k(c*mu/k)^(1/3)), Btu/(hr)*(ft)*(F/ft), fig 16
hi=((jH)*(Z/D)); //Hi=(hi/phyp),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=2.9; // ft
OD=3.5; // ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hio to the surface at the OD is : %.1f Btu/(hr)*(ft^2)*(F) \n",hio);
ho=150; // Btu/(hr)*(ft^2)
tw=(tc)+(((hio)/(hio+ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
tf=(tw+tc)/2;
printf("\t tf is : %.0f F \n",tf);
delt=110; // F
d0=3.5; // in, fig 10.4
Uc=((ho*hio)/(ho+hio)); // from eq 6.38
printf("\t Uc is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=0.01;
hd=(1/Rd);
printf("\t hd is : %.0f \n",hd);
UD=((Uc*hd)/(Uc+hd));
printf("\t UD is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
A=(Q/(UD*(LMTD)));
printf("\t Area is : %.0f ft^2 \n",A);
a=0.917; // ft^2/ft, table 11
L=(A/(a*24));
printf("\t pipe length : %.0f \n",L);
// end
