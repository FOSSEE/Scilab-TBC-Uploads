printf("\t example 12.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=200; // inlet hot fluid,F
T2=130; // outlet hot fluid,F
T3=125; // after condensation
t1=65; // inlet cold fluid,F
t3=100; // outlet cold fluid,F
W=27958; // lb/hr
w=135500; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for butane \n");
c=0.44; // Btu/(lb)(F)
qd=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for desuperheating of butane is : %.1e Btu/hr \n",qd);
HT2=309; // enthalpy at T2, Btu/lb
HT3=170; // enthalpy at T3, Btu/lb
qc=(W*(HT2-HT3)); // for condensation
printf("\t total heat required for condensing of butane is : %.2e Btu/hr \n",qc);
Q=qd+qc;
printf("\t total heat required for  butane is : %.2e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t3-t1)); // Btu/hr
printf("\t total heat required for water is : %.2e Btu/hr \n",Q);
deltw=(qc/w);
printf("\t deltw is : %.1f F \n",deltw);
t2=t1+deltw;
printf("\t t2 is : %.1f F \n",t2)
printf("\t for desuperheating \n");
delt1=T2-t2; //F
delt2=T1-t3; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTDd=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTDd);
w1=(qd/LMTDd);
printf("\t w1 is : %.3e lb/hr \n",w1);
printf("\t for condensing \n");
delt3=T3-t1; //F
delt4=T2-t2; // F
printf("\t delt1 is : %.0f F \n",delt3);
printf("\t delt2 is : %.0f F \n",delt4);
LMTDc=((delt4-delt3)/((2.3)*(log10(delt4/delt3))));
printf("\t LMTD is :%.0f F \n",LMTDc);
w2=(qc/LMTDc);
printf("\t w1 is : %.2e lb/hr \n",w2);
delt=(Q/(w1+w2));
printf("\t delt is : % .1f F \n",delt);
Tc=((T3)+(T2))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.1f F \n",Tc);
tc=((t1)+(t3))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f F \n",tc);
printf("\t hot fluid:shell side,butane \n");
ID=23.25; // in
C=0.25; // clearance
B=12; // baffle spacing,in
PT=1;
as=((ID*C*B)/(144*PT)); // flow area,ft^2
printf("\t flow area is : %.3f ft^2 \n",as);
printf("\t desuperheating \n");
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=0.0242; // at 165F,lb/(ft)*(hr), from fig.15
De=0.73/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=239; // from fig.28
k=0.012; // Btu/(hr)*(ft^2)*(F/ft), from table 5
Z=0.96; // Z=((c)*(mu1)/k)^(1/3)
ho=((jH)*(k/De)*(Z)); // H0=(h0/phya),using eq.6.15b,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,water \n");
Nt=352;
n=4; // number of passes
L=16; //ft
at1=0.302; // flow area,table 10, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5));
printf("\t V is : %.2f fps \n",V);
mu2=2.11; // at 82.5F, fig 14,lb/(ft)*(hr)
D=0.0517; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=800; // fig 25,Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.62; // ft
OD=0.75; //ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hio to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
Ud=((hio)*(ho)/(hio+ho)); // clean overall coefficient,eq 6.38,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Ud);
Ad=(qd/(Ud*LMTDd));
printf("\t clean surface required for desuperheating : %.0f ft^2 \n",Ad);
printf("\t for condensaton \n");
Lc=16*0.6; // condensation occurs 60% of the tube length
G1=(W/(Lc*Nt^(2/3))); // from eq.12.43
printf("\t G1 is : %.1f lb/(hr)*(lin ft) \n",G1);
ho=200; // assumption
tw=(tc)+(((ho)/(hio+ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
tf=(Tc+tw)/(2); // from eq 12.19
printf("\t tf is : %.0f F \n",tf);
kf=0.075; // Btu/(hr)*(ft^2)*(F/ft)
sf=0.55; // from table 6
muf=0.14; // cp, from fig 14
ho=207; // Btu/(hr)*(ft^2)*(F), from fig 12.9
printf("\t Correct ho to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Ac=(qc/(Uc*LMTDc));
printf("\t clean surface required for desuperheating : %.0f ft^2 \n",Ac);
AC=Ad+Ac;
printf("\t total clean surface : %.0f ft^2 \n",AC);
lc=(Ac/(Ac+Ad));
printf("\t assumed condensing length percentage : %.2f \n",lc);
UC=((Ud*Ad)+(Uc*Ac))/(AC);
printf("\t weighted clean overall coefficient : %.0f Btu/(hr)*(ft^2)*(F) \n",UC);
A2=0.1963; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((UC-UD)/((UD)*(UC))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
printf("\t desuperheating \n");
Ld=6.4; //ft
De=0.0608; // fig 28
f=0.0013; // friction factor for reynolds number 145000, using fig.29
Ds=1.94; // ft
phys=1;
N=(12*Ld/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
row=(58.1/((359)*(625/492)*(14.7/99.7)));
printf("\t row is %.3f lb/ft^3 \n",row);
s=(row/62.5);
printf("\t s is %.4f \n",s);
delPsd=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPsd);
printf("\t condensation \n");
N=(12*Lc/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPsc=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys)))/(2); // using eq 12.47,psi
printf("\t delPsc is : %.1f psi \n",delPsc);
delPS=delPsd+delPsc;
printf("\t delPS is : %.0f psi \n",delPS);
printf("\t allowable delPa is 2 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.00023; // friction factor for reynolds number 17900, using fig.26
s=1;
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.0f psi \n",delPt);
X1=0.075; // X1=((V^2)/(2*g)),using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPa is 10 psi \n");
//end
