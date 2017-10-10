printf("\t example 12.1 \n");
printf("\t approximate values are mentioned in the book \n");
T1=244; // inlet hot fluid,F
T2=244; // outlet hot fluid,F
t1=85; // inlet cold fluid,F
t2=120; // outlet cold fluid,F
W=60000; // lb/hr
w=488000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for propanol \n");
l=285; // Btu/(lb)
Q=((W)*(l)); // Btu/hr
printf("\t total heat required for propanol is : %.2e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for water is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
Tc=((T2)+(T1))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f F \n",tc);
UD1=100; // assume, from table 8
A1=((Q)/((UD1)*(LMTD)));
printf("\t A1 is : %.0f ft^2 \n",A1);
a1=0.1963; // ft^2/lin ft
N1=(A1/(8*a1));
printf("\t number of tubes are : %.0f \n",N1);
N2=766; // assuming 4 tube passes, from table 9
A2=(N2*8*a1); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A2);
UD=((Q)/((A2)*(LMTD)));
printf("\t correct design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
printf("\t hot fluid:shell side,propanol \n");
ID=31; // in
C=0.1875; // clearance
B=31; // baffle spacing,in
PT=0.937;
L=8; // ft
as=((ID*C*B)/(144*PT)); // flow area,from eq 7.1,ft^2
printf("\t flow area is : %.2f ft^2 \n",as);
Gs=(W/as); // mass velocity,from eq 7.2,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
G1=(W/(L*N2^(2/3))); // from eq.12.43
printf("\t G1 is : %.1f lb/(hr)*(lin ft) \n",G1);
printf("\t cold fluid:inner tube side,water \n");
Nt=766;
n=4; // number of passes
L=8; //ft
at1=0.302; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5));
printf("\t V is : %.2f fps \n",V);
mu2=1.74; // at 102.5F,lb/(ft)*(hr)
D=0.0517; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=1300; //Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.62; // ft
OD=0.75; //ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio); // calculation mistake
ho=200; // assumption
tw=(tc)+(((ho)/(hio+ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
tf=(Tc+tw)/(2); // from eq 12.19
printf("\t tf is : %.1f F \n",tf);
kf=0.094; // Btu/(hr)*(ft^2)*(F/ft), from table 4
sf=0.8; // from table 6
muf=0.62; // cp, from fig 14
ho=172; // Btu/(hr)*(ft^2)*(F), from fig 12.9
printf("\t Correct ho to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t Based on h=172 instead of the assumed 200 a new value of tw,and tf could be obtained to give a more exact value of h based on fluid properties at a value of tf more nearly correct \n");
printf("\t pressure drop  for annulus \n");
mu1=0.0242; // lb/(ft)*(hr), fir 15
De=0.0458; // fig 28
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
f=0.00141; // friction factor for reynolds number 84600, using fig.29
s=0.00381; // for reynolds number 84600,using fig.6
Ds=31/12; // ft
phys=1;
N=(3); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys)))/(2); // using eq.12.47,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPa is 2 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.00019; // friction factor for reynolds number 36200, using fig.26
s=1;
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.2; // X1=((V^2)/(2*g)),using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPT is 10 psi \n");
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
// end
