printf("\t example 8.2 \n");
printf("\t approximate values are mentioned in the book \n");
T1=250; // inlet hot fluid,F
T2=100; // outlet hot fluid,F
t1=90; // inlet cold fluid,F
t2=150; // outlet cold fluid,F
W=60000; // lb/hr
w=168000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for acetone \n");
c=0.57; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for acetone is : %.2e Btu/hr \n",Q); // calculation mistake in problem
printf("\t for acetic acid \n");
c=0.51; // Btu/(lb)*(F)
Q1=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for acetic acid is : %.2e Btu/hr \n",Q1); // calculation mistake in problem
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.1f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.3f \n",S);
printf("\t FT is 0.88 \n"); // from fig 20,for 3-6 exchanger
delt=(0.88*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
Tc=((T2)+(T1))/2; // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/2; // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,acetone \n");
ID=21.25; // in
C=0.25; // clearance
B=5; // baffle spacing,in
PT=1;
as=((ID*C*B)/(144*PT)); // flow area,ft^2
printf("\t flow area is : %.3f ft^2 \n",as);
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=0.20*2.42; // at 175F,lb/(ft)*(hr), from fig.14
De=0.95/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
phys=1;
jH=137; // from fig.28
c=0.63; // Btu/(lb)*(F),at 175F,from fig.2
k=0.095; // Btu/(hr)*(ft^2)*(F/ft), from table 4
Pr=((c)*(mu1)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
ho=((jH)*(k/De)*(Pr)*1); // using eq.6.15b,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,acetic acid \n");
Nt=270;
n=2; // number of passes
L=16; //ft
at1=0.268; // flow area, in^2,from table 10
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gt);
mu2=0.85*2.42; // at 120F,lb/(ft)*(hr)
D=(0.584/12); // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
jH=56; // from fig.24
c=0.51; // Btu/(lb)*(F),at 120F,from fig.2
k=0.098; // Btu/(hr)*(ft^2)*(F/ft), from table 4
phyt=1;
Pr=((c)*(mu2)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
hi=((jH)*(k/D)*(Pr)*(1^0.14)); // using eq.6.15a,Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.584; // ft
OD=0.75; //ft
hio=((hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.1963; // actual surface supplied for each tube,ft^2,from table 10
A=3*(Nt*L*A2); // ft^2
printf("\t total surface area is : %.2e ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
f=0.00155; // friction factor for reynolds number 52200, using fig.29
s=0.79; // for reynolds number 25300,using table.6
Ds=21.25/12; // ft
N=(12*L/B)+1; // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(3*N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPs is 10 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.00024; // friction factor for reynolds number 158000, using fig.26
s=1.07;
D=0.0487; // ft
delPt=((f*(Gt^2)*(L)*(n*3))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.063; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=(3)*((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPT is 10 psi \n");
//end
