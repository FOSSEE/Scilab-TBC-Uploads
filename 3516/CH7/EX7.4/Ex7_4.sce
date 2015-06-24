printf("\t example 7.4 \n");
printf("\t approximate values are mentioned in the book \n");
T1=93; // inlet hot fluid,F
T2=85; // outlet hot fluid,F
t1=75; // inlet cold fluid,F
t2=80; // outlet cold fluid,F
W=175000; // lb/hr
w=280000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for distilled water \n");
c=1; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for distilled water is : %.1e Btu/hr \n",Q);
printf("\t for raw water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for raw water is : %.1e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.2f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.3f \n",S);
printf("\t FT is 0.945 \n"); // from fig 18
delt=(0.945*LMTD); // F
printf("\t delt is : %.2f F \n",delt);
X=((delt1)/(delt2));
printf("\t ratio of two local temperature difference is : %.3f \n",X);
Fc=0.42; // from fig.17
Kc=0.20; // crude oil controlling
Tc=((T2)+(T1))/2; // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/2; // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f F \n",tc);
printf("\t hot fluid:shell side,distilled water \n");
ID=15.25; // in
C=0.1875; // clearance
B=12; // baffle spacing,in
PT=0.9375;
as=((ID*C*B)/(144*PT)); // flow area,ft^2,using eq.7.1
printf("\t flow area is : %.3f ft^2 \n",as);
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2),using eq.7.2
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gs);
mu1=0.81*2.42; // at 89F,lb/(ft)*(hr), from fig.14
De=0.55/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=73; // from fig.28
c=1; // Btu/(lb)*(F),at 89F,from fig.table 4
k=0.36; // Btu/(hr)*(ft^2)*(F/ft), from table 4
Pr=((c)*(mu1)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
ho=((jH)*(k/De)*(Pr)); // using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.2e Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,raw water \n");
Nt=160;
n=2; // number of passes
L=16; //ft
at1=0.334; // flow area, in^2,from table 10
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.3e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5));
printf("\t V is %.1f fps \n",V);
mu2=0.92*2.42; // at 77.5F,lb/(ft)*(hr)
D=0.65/12; //ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=1350*0.99; //using fig.25,Btu/(hr)*(ft^2)*(F)
ID=0.65; // ft
OD=0.75; //ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
printf("\t ·when both. film coefficients are high the thermal resistance of the tube metal is not necessarily insignificant as assumed in the derivation of Eq. (6.38). For a steel 1.8 BWG tube Rm= 0.00017 and for copper Rm= 0.000017 \n");
A2=0.1963; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
f=0.0019; // friction factor for reynolds number 16200, using fig.29
s=1; // for reynolds number 25300,using fig.6
Ds=15.25/12; // ft
phys=1;
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPs is 10 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.00019; // friction factor for reynolds number 36400, using fig.26
s=1;
phyt=1;
D=0.054; // ft
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.33; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPT is 10 psi \n");
//end
