printf("\t example 12.6 \n");
printf("\t approximate values are mentioned in the book \n");
T1=176; // inlet hot fluid,F
T2=176; // outlet hot fluid,F
t1=85; // inlet cold fluid,F
t2=120; // outlet cold fluid,F
W=30000; // lb/hr
w=120000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for carbon disulfide \n");
l=140; // Btu/(lb)
Q=((W)*l); // Btu/hr
printf("\t total heat required for carbon disulfide is : %.1e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for water is : %.0f Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
Tc=((T2)+T1)/2; // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/2; // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f F \n",tc);
printf("\t hot fluid:inner tube side,carbon disulfide \n");
hio=300; // Btu/(hr)*(ft^2)*(F)
printf("\t cold fluid:shell side,water \n");
ID=17.25; // in
C=0.25; // clearance
B=6; // baffle spacing,in
PT=1;
as=((ID*C*B)/(144*PT)); // flow area,ft^2
printf("\t flow area is : %.2f ft^2 \n",as);
Gs=(w/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=1.7; // at 280F,lb/(ft)*(hr), from fig.14
De=0.0792; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.1e \n",Res);
jH=103; // from fig.28
k=0.36; // Btu/(hr)*(ft^2)*(F/ft), from fig.1
Z=1.68; // Z=((c)*(mu1)/k)^(1/3); // prandelt number
ho=((jH)*(k/De)*(Z)); // using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
tw=(tc)+(((hio)/(hio+ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.1f F \n",tw);
tf=(Tc+tw)/(2); // from eq 12.19
printf("\t tf is : %.1f F \n",tf);
printf("\t hot fluid:inner tube side,carbon disulfide \n");
kf=0.09; // Btu/(hr)*(ft^2)*(F/ft), from fig 14
sf=1.26; // from table 6
rowf=78.8; // lb/ft^3
muf=0.68; // cp, from fig 24
Nt=177;
D=0.0517; // ft
G1=(W/(3.14*Nt*D));
printf("\t G1 is : %.f lb/(hr)*(lin ft) \n",G1);
Ret=((4)*(G1)/muf); // reynolds number
printf("\t reynolds number is : %.0f \n",Ret);
hi=(0.251*(((kf^3)*(rowf^2)*(4.17*10^8))/(muf^2))^(1/3)); // hi*(((kf^3)*(rowf^2)*(4.17*10^8))/(muf^2))^(-1)=0.251, from fig 12.12
printf("\t hi is : %.0e Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.62; // ft
OD=.75; //ft
hio1=((hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct hio1 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio1);
Uc=((hio1)*(ho)/(hio1+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.1963; // actual surface supplied for each tube,ft^2,from table 10
L=16;
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(LMTD)));
printf("\t actual design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.5f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for inner pipe \n");
n=1; // number of passes
at1=0.302; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(30000/(0.372)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=0.029; // at inlet,lb/(ft)*(hr)
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
row=(76.1/((359)*(636/492)*(14.7/39.7)));
printf("\t row is %.3f ld/ft^3 \n",row);
s=(row/62.5);
printf("\t s is %.4f \n",s);
f=0.000138; // friction factor for reynolds number 143000, using fig.26
delPt=((f*(Gt^2)*(16)*(1))/(5.22*(10^10)*(0.0517)*(s)))/(2); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
printf("\t allowable delPa is negligible psi \n");
printf("\t pressure drop  for annulus \n");
f=0.0017; // friction factor for reynolds number 31000, using fig.29
s=1; // for reynolds number 31000,using fig.6
Ds=17.25/12; // ft
B=6;
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPT is 10 psi \n");
//end
