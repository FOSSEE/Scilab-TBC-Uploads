printf("\t example 15.2 \n");
printf("\t approximate values are mentioned in the book \n");
t1=108; // inlet cold fluid,F
t2=235; // outlet cold fluid,F
Ts=338;
Wp=24700; // lb/hr
Wv=19750; // lb/hr
w=4880; // lb/hr
printf("\t 1.for heat balance \n");
Ht1=162; // enthalpy at t1, Btu/lb, fig 9
Ht2=248; // enthalpy at t2, Btu/lb, fig 9
qp=(Wp*(Ht2-Ht1)); // for preheat
printf("\t total heat required for preheat of butane is : %.2e Btu/hr \n",qp);
Ht3=358; // enthalpy of vapour at t2, Btu/lb, fig 9
qv=Wv*(Ht3-Ht2);
printf("\t total heat required for vapourisation of butane is : %.2e Btu/hr \n",qv);
Q=qp+qv;
printf("\t total heat required for  butane is : %.2e Btu/hr \n",Q);
printf("\t for steam \n");
l=880.6; // Btu/(lb), table 7
Q=((w)*(l)); // Btu/hr
printf("\t total heat required for steam is : %.2e Btu/hr \n",Q);
deltp=158.5; // F, from eq 5.14
deltv=103; // F eq 5.14
Wp1=(qp/deltp);
printf("\t Wp1 is : %.2e lb/hr \n",Wp1);
Wv1=(qv/deltv);
printf("\t Wv1 is : %.2e lb/hr \n",Wv1);
W=(Wp1+Wv1);
printf("\t W is : %.2e lb/hr \n",W);
delt=(Q/W);
printf("\t weighted delt is : % .1f F \n",delt);
Tc=((Ts)+(Ts))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.1f F \n",Tc);
tc=((t1)+(t2))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f F \n",tc);
printf("\t hot fluid:inner tube side,steam \n");
Nt=76;
n=2; // number of passes
L=16; //ft
at1=0.594; // flow area,table 10, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu1=0.0363; // at 338F, fig 15,lb/(ft)*(hr)
D=0.0725; // ft
Ret=((D)*(Gt)/mu1); // reynolds number
printf("\t reynolds number is : %.1e \n",Ret);
hio=1500; // condensing steam,Btu/(hr)*(ft^2)*(F)
printf("\t hio is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
printf("\t cold fluid:shell side,butane \n");
printf("\t preheating \n");
ID=15.25; // in
C=0.25; // clearance
B=5; // baffle spacing,in
PT=1.25;
as=((ID*C*B)/(144*PT)); // flow area,ft^2
printf("\t flow area is : %.3f ft^2 \n",as);
Gs=(Wp/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu2=0.278; // at 172F,lb/(ft)*(hr), from fig.14
De=0.0825; // from fig.28,ft
Res=((De)*(Gs)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=159; // from fig.28
Z=0.12; // Z=k*((c)*(mu1)/k)^(1/3), fig 16
hop=((jH)*(1/De)*(Z)); //using eq.6.15b,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",hop);
Up=((hio)*(hop)/(hio+hop)); // clean overall coefficient,eq 6.38,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient for preheating : %.0e Btu/(hr)*(ft^2)*(F) \n",Up);
Ap=(qp/(Up*deltp));
printf("\t clean surface required for preheating : %.0f ft^2 \n",Ap);
printf("\t for vapourisation \n");
mu2=0.242; // at 172F,lb/(ft)*(hr), from fig.14
Res=((De)*(Gs)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=170; // from fig.28
Z=0.115; // Z=k*((c)*(mu1)/k)^(1/3), fig 16
hov=((jH)*(1/De)*(Z)); //using eq.6.15b,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",hov);
Uv=((hio)*(hov)/(hio+hov)); // clean overall coefficient,eq 6.38,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient for vapourisation : %.0f Btu/(hr)*(ft^2)*(F) \n",Uv);
Av=(qv/(Uv*deltv));
printf("\t clean surface required for vapourisation : %.0f ft^2 \n",Av);
Ac=Ap+Av;
printf("\t total clean surface : %.1e ft^2 \n",Ac);
UC=((Up*Ap)+(Uv*Av))/(Ac);
printf("\t weighted clean overall coefficient : %.0f Btu/(hr)*(ft^2)*(F) \n",UC);
A2=0.2618; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
// A total of 170 ft2 are required of which 103 are to be used for vaporization. For the total surface required 318 ft2 will be provided. It can be assumed, then, that the surface provided for vaporization is 193ft^2
// then flux is Q/A=10700, which is with in satisfactory levels.
Rd=((UC-UD)/((UD)*(UC))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for inner pipe \n");
f=0.000165; // friction factor for reynolds number 62000, using fig.26
s=0.00413;
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt)))/(2); // using eq.7.45,psi
printf("\t delPt is : %.2f psi \n",delPt);
printf("\t allowable delPa is negligible \n");
printf("\t pressure drop  for annulus \n");
printf("\t preheating \n");
f=0.00145; // friction factor for reynolds number 69200, using fig.29
Lp=(L*Ap/Ac); //ft
printf("\t length of preheat zone : %.1f ft \n",Lp);
N=(12*Lp/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
s=0.5; // for reynolds number 69200,using fig.6
Ds=1.27; // fig 28
phys=1;
delPsp=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPsp is : %.1f psi \n",delPsp);
printf("\t vapourisation \n");
f=0.00142;
Lv=9.7; // Lv=L-Lp
Nv=(12*Lv/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",Nv);
s=0.28; 
delPsv=((f*(Gs^2)*(Ds)*(Nv))/(5.22*(10^10)*(De)*(s)*(1))); // using eq 12.47,psi
printf("\t delPsv is : %.1f psi \n",delPsv);
delPS=delPsp+delPsv;
printf("\t delPS is : %.1f psi \n",delPS);
printf("\t allowable delPa is 5 psi \n");
//end
