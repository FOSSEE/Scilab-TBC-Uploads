printf("\t example 12.4 \n");
printf("\t approximate values are mentioned in the book \n");
T1=130; // inlet hot fluid,F
T2=125; // outlet hot fluid,F
T3=100; // after sucooling
t1=80; // inlet cold fluid,F
t3=100; // outlet cold fluid,F
W=21000; // lb/hr
w=167000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for pentane \n");
HT1=315; // enthalpy at T1, Btu/lb
HT2=170; // enthalpy at T2, Btu/lb
qc=(W*(HT1-HT2)); // for condensation
printf("\t total heat required for condensing of pentane is : %.2e Btu/hr \n",qc);
c=0.57; // Btu/(lb)(F)
qs=((W)*(c)*(T2-T3)); // Btu/hr
printf("\t total heat required for subcooling of pentane is : %.0e Btu/hr \n",qs);
Q=qs+qc;
printf("\t total heat required for  pentane is : %.2e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t3-t1)); // Btu/hr
printf("\t total heat required for water is : %.2e Btu/hr \n",Q);
deltw=(qc/w);
printf("\t deltw is : %.1f F \n",deltw);
t2=t3-deltw;
printf("\t t2 is : %.1f F \n",t2)
printf("\t for condensing \n");
delt1=T2-t2; //F
delt2=T1-t3; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTDc=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTDc);
w1=(qc/LMTDc);
printf("\t w1 is : %.2e lb/hr \n",w1);
printf("\t subcooling \n");
delt3=T3-t1; //F
delt4=T2-t2; // F
printf("\t delt1 is : %.0f F \n",delt3);
printf("\t delt2 is : %.0f F \n",delt4);
LMTDs=((delt4-delt3)/((2.3)*(log10(delt4/delt3))));
printf("\t LMTD is :%.1f F \n",LMTDs);
w2=(qs/LMTDs);
printf("\t w1 is : %.2e lb/hr \n",w2);
delt=(Q/(w1+w2));
printf("\t delt is : % .1f F \n",delt);
Tc=((T1)+(T2))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.1f F \n",Tc);
tc=((t1)+(t3))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,pentane \n");
printf("\t for condensaton \n");
Do=0.0625; // ft
Nt=370; // number of tubes
G1=(W/(3.14*Nt*Do)); // from eq.12.42
printf("\t G1 is : %.1e lb/(hr)*(lin ft) \n",G1);
printf("\t cold fluid:inner tube side,water \n");
n=4; // number of passes
L=16; //ft
at1=0.302; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5));
printf("\t V is : %.2f fps \n",V);
mu2=1.98; // at 90F,lb/(ft)*(hr)
D=0.0517; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=940; //Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.62; // ft
OD=0.75; //ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hio to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
ho=125; // assumption
tw=(tc)+(((ho)/(hio+ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
tf=(Tc+tw)/(2); // from eq 12.19
printf("\t tf is : %.0f F \n",tf);
kf=0.077; // Btu/(hr)*(ft^2)*(F/ft), table 4
sf=0.6; // from table 6
muf=0.19; // cp, from fig 14
ho=120; // Btu/(hr)*(ft^2)*(F), from fig 12.9
printf("\t Correct ho to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Ac=(3040000/(104*36.4));
printf("\t clean surface required for dcondensation : %.0f ft^2 \n",Ac);
printf("\t subcooling \n");
ID=25; // in
C=0.25; // clearance
B=12; // baffle spacing,in
PT=1;
as=((ID*C*B)/(144*PT)); // flow area,ft^2
printf("\t flow area is : %.3f ft^2 \n",as);
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=0.46; // at 112.5F,lb/(ft)*(hr), from fig.14
De=0.95/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=46.5; // from fig.28
k=0.077; // Btu/(hr)*(ft^2)*(F/ft), from table 4
Z=1.51; // Z=((c)*(mu1)/k)^(1/3)
ho=((jH)*(k/De)*(Z)); // using eq.6.15b,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Us=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Us);
As=(qs/(Us*LMTDs));
printf("\t clean surface required for desuperheating : %.1f ft^2 \n",As);
AC=As+Ac;
printf("\t total clean surface : %.0f ft^2 \n",AC);
UC=((Us*As)+(Uc*Ac))/(AC);
printf("\t weighted clean overall coefficient : %.1f Btu/(hr)*(ft^2)*(F) \n",UC);
A2=0.1963; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((UC-UD)/((UD)*(UC))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
printf("\t condensation \n");
Lc=13.4; //ft
De=0.0792; // fig 28
f=0.0012; // friction factor for reynolds number 193000, using fig.29
mu3=0.0165; // at 127.5F
Ds=2.08; // ft
phys=1;
Res1=(De*Gs/mu3);
printf("\t reynolds number is %.2e \n",Res1);
rowvap=(72.2/((359)*(590/492)*(14.7/25)));
printf("\t rowvapour is %.3f ld/ft^3 \n",rowvap);
s=(rowvap/62.5);
printf("\t s is %.5f \n",s);
N=(12*Lc/B)+(1); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPsc=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys)))/(2); // using eq.12.47,psi
printf("\t delPsc is : %.1f psi \n",delPsc);
printf("\t delPss is negligible \n");
printf("\t allowable delPa is 2 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.00022; // friction factor for reynolds number 22500, using fig.26
s=1;
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.1; // X1=((V^2)/(2*g)),using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPT is 10 psi \n");
//end
