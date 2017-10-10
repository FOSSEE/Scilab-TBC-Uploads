printf("\t example 10.2 \n");
printf("\t approximate values are mentioned in the book \n");
T1=250; // inlet hot fluid,F
T2=250; // outlet hot fluid,F
t1=95; // inlet cold fluid,F
t2=145; // outlet cold fluid,F
W=16000; // lb/hr
w=423; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for kerosene \n");
c=0.5; // Btu/(lb)*(F)
Q=((W)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for kerosene is : %.0f Btu/hr \n",Q);
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
tc=((t1)+(t2))/2; // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,steam \n");
ho=(1500); // condensation of steam Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,kerosene \n");
Nt=86;
n=2; // number of passes
L=12; //ft
at1=0.594; // flow area, in^2,from table 10
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(W/(.177)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=1.36*2.42; // at 145F,lb/(ft)*(hr)
D=(0.87/12); // ft
Ret1=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.0f \n",Ret1);
mu3=1.75*2.42; // at 120F,lb/(ft)*(hr)
D=(0.87/12); // ft
Ret2=((D)*(Gt)/mu3); // reynolds number
printf("\t reynolds number is : %.1e \n",Ret2);
Z1=331; // Z1=(L*n/D)
jH=3.1; // from fig 24
mu4=1.75; // cp and 40 API
Z2=0.24; // Z2=((k)*(c*mu4/k)^(1/3)), from fig 16
Hi=((jH)*(1/D)*(Z2)); // using eq.6.15a,Btu/(hr)*(ft^2)*(F)
printf("\t Hi is : %.2f Btu/(hr)*(ft^2)*(F) \n",Hi);
ID=0.87; // ft
OD=1; //ft
Hio=(Hi*(ID/OD)); //Btu/(hr)*(ft^2)*(F), from eq.6.5
printf("\t Hio is : %.2f Btu/(hr)*(ft^2)*(F) \n",Hio);
tw=(tc)+(((ho)/(Hio+ho))*(T1-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
muw=1.45; // lb/(ft)*(hr),at 249F from fig.14
phyt=(mu3/muw)^0.14;
printf("\t phyt is : %.1f \n",phyt); // from fig.24
hio=(Hio)*(phyt); // from eq.6.37
printf("\t Correct hio to the surface at the OD is : %.1f Btu/(hr)*(ft^2)*(F) \n",hio);
delt=tw-tc; //F
printf("\t delt is : %.0f F \n",delt);
printf("\t Since the kerosene has a viscosity of only 1.75 cp at the caloric temperature and delt=129F, free convection should be investigated. \n");
s=0.8;
row=50; // lb/ft^3, from fig 6
s1=0.810; // at 95F
s2=0.792; // at 145F
bita=((s1^2-s2^2)/(2*(t2-t1)*s1*s2)); // /F
printf("\t beta is : %.6f /F \n",bita);
G=((D^3)*(row^2)*(bita)*(delt)*(4.18*10^8)/(mu3^2));
printf("\t G is : %.1e  \n",G);
psy=((2.25)*(1+(0.01*G^(1/3)))/(log10(Ret2)));
printf("\t psy is : %.2f  \n",psy);
hio1=(hio*psy);
printf("\t corrected hio1 is : %.1f Btu/(hr)*(ft^2)*(F) \n",hio1);
Uc=((hio1)*(ho)/(hio1+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.2618; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.2f (hr)*(ft^2)*(F)/Btu \n",Rd);
// end

