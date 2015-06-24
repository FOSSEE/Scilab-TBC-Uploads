printf("\t example 9.1 \n");
printf("\t approximate values are mentioned in the book \n");
T1=245; // inlet hot fluid,F
T2=95; // outlet hot fluid,F
t1=85; // inlet cold fluid,F
t2=95; // outlet cold fluid,F
W=9872; // lb/hr
w=78500; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for ammonia gas \n");
c=0.53; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for ammonia gas is : %.2e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for water is : %.2f Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.0f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.4f \n",S);
printf("\t FT is 0.837 \n"); // from fig 18
delt=(0.837*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
Tc=((T2)+(T1))/2; // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/2; // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,ammonia at 83psia \n");
ID=23.25; // in
C=0.1875; // clearance
B=12; // baffle spacing,in
PT=0.937;
as=((ID*C*B)/(144*PT)); // flow area,ft^2,from eq 7.1
printf("\t flow area is : %.3f ft^2 \n",as);
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2),from eq 7.2
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=0.012*2.42; // at 170F,lb/(ft)*(hr), from fig.15
De=0.55/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=118; // from fig.28
k=0.017; // Btu/(hr)*(ft^2)*(F/ft),from table 5
Z=0.97; // Z=(Pr*(1/3)) prandelt number
ho=((jH)*(k/De)*(Z)*1); // using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,water \n");
Nt=364;
n=8; // number of passes
L=8; //ft
at1=0.302; // flow area, in^2,from table 10
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.4f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5)); // fps
printf("\t V is : %.2f fps \n",V);
mu2=0.82*2.42; // at 90F,lb/(ft)*(hr),from fig 14
D=(0.62/12); // ft,from table 10
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=900; // using fig 25,Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.62; // ft
OD=0.75; //ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.1963; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.3f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
f=0.00162; // friction factor for reynolds number 40200, using fig.29
Ds=23.25/12; // ft
phys=1;
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
rowgas=0.209;
printf("\t rowgas is %.3f lb/ft^3 \n",rowgas);
s=rowgas/62.5;
printf("\t s is %.5f \n",s);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.0f psi \n",delPs);
printf("\t allowable delPs is 2 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.000225; // friction factor for reynolds number 21400, using fig.26
s=1;
D=0.0517; //ft
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.090; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPT is 10 psi \n");
//end
