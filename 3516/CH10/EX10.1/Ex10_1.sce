printf("\t example 10.1 \n");
printf("\t approximate values are mentioned in the book \n");
T1=250; // inlet hot fluid,F
T2=250; // outlet hot fluid,F
t1=95; // inlet cold fluid,F
t2=145; // outlet cold fluid,F
W=16000; // lb/hr
w=410; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for crude \n");
c=0.485; // Btu/(lb)*(F)
Q=((W)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for crude is : %.2e Btu/hr \n",Q);
printf("\t for steam \n");
l=945.5; // Btu/(lb)
Q=((w)*(l)); // Btu/hr
printf("\t total heat required for steam is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
printf("\t On the assumption that the fluids are mixed between passes, each pass must be solved independently. Since only two passes are present in this exchanger, it is simply a matter of assuming the temperature at the end of the first pass. More than half the heat load must be transferred in the first pass; therefore assume ti at the end of the first pass is 125°F \n");
ti=125; // F
tc=((t1)+(ti))/2; // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,steam \n");
ho=(1500); // condensation of steam Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,crude \n");
Nt=86;
n=2; // number of passes
L=12; //ft
at1=0.594; // flow area, in^2,from table 10
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(W/(.177)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=2.95*2.42; // at 145F,lb/(ft)*(hr)
D=(0.87/12); // ft
Ret1=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.0f \n",Ret1);
mu3=4.8*2.42; // at 110F,lb/(ft)*(hr)
D=(0.87/12); // ft
Ret2=((D)*(Gt)/mu3); // reynolds number
printf("\t reynolds number is : %.0f \n",Ret2);
c=0.485; // Btu/(lb)*(F),at 120F,from fig.2
k=0.0775; // Btu/(hr)*(ft^2)*(F/ft), from table 4
Pr=((c)*(mu3)/k); // prandelt number
printf("\t prandelt number is : %.1f \n",Pr);
Hi=((1.86)*(k/D)*((Ret2*(D/L)*Pr)^(1/3))); // using eq.6.1,Btu/(hr)*(ft^2)*(F)
printf("\t Hi is : %.1f Btu/(hr)*(ft^2)*(F) \n",Hi);
muw=1.2*2.42; // lb/(ft)*(hr),at 249F from fig.14
phyt=(mu3/muw)^0.14;
printf("\t phyt is : %.1f \n",phyt); // from fig.24
hi=(Hi)*(phyt); // from eq.6.37
printf("\t Correct hi to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
tp=(tc)+(((ho)/(hi+ho))*(T1-tc)); // from eq.5.31
printf("\t tp is : %.0f F \n",tp);
delt=tp-tc; //F
printf("\t delt is : %.0f F \n",delt);
Ai1=0.228 // internal surface per foot of length,ft
Ai=(Nt*L*Ai1/2); // ft^2
printf("\t total surface area is : %.1f ft^2 \n",Ai);
delt3=((hi*Ai*delt)/(W*c)); // delt3=ti-t1, F
printf("\t delt3 is : %.1f F \n",delt3);
ti=t1+delt3; // F
printf("\t ti is : %.1f F \n",ti);
printf("\t The oil now enters the second pass at 126.9°F \n");
// end


