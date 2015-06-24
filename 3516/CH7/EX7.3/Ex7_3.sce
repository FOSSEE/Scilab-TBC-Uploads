printf("\t example 7.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=390; // inlet hot fluid,F
T2=200; // outlet hot fluid,F
t1=100; // inlet cold fluid,F
t2=170; // outlet cold fluid,F
W=43800; // lb/hr
w=149000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for kerosene \n");
c=0.605; // Btu/(lb)*(F)
Q1=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for kerosene is : %.1e Btu/hr \n",Q1); // calculation mistake in problem
printf("\t for crude oil \n");
c=0.49; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for mid continent crude is : %.1e Btu/hr \n",Q); // calculation mistake in problem
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
printf("\t FT is 0.905 \n"); // from fig 18
delt=(0.905*LMTD); // F
printf("\t delt is : %.0f F \n",delt);
X=((delt1)/(delt2));
printf("\t ratio of two local temperature difference is : %.3f \n",X);
Fc=0.42; // from fig.17
Kc=0.20; // crude oil controlling
Tc=((T2)+((Fc)*(T1-T2))); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+((Fc)*(t2-t1))); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,kerosene \n");
ID=21.25; // in
C=0.25; // clearance
B=5; // baffle spacing,in
PT=1.25;
as=((ID*C*B)/(144*PT)); // flow area,ft^2
printf("\t flow area is : %.4f ft^2 \n",as);
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=0.40*2.42; // at 280F,lb/(ft)*(hr), from fig.14
De=0.99/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=93; // from fig.28
c=0.59; // Btu/(lb)*(F),at 280F,from fig.4
k=0.0765; // Btu/(hr)*(ft^2)*(F/ft), from fig.1
Pr=((c)*(mu1)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
Ho=((jH)*(k/De)*(Pr)); // H0=(h0/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Ho);
printf("\t cold fluid:inner tube side,crude oil \n");
D=0.0675; // ft
Nt=158;
n=4; // number of passes
L=16; //ft
at1=0.515; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=3.6*2.42; // at 129F,lb/(ft)*(hr)
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
jH=31; // from fig.24
c=0.49; // Btu/(lb)*(F),at 304F,from fig.4
k=0.077; // Btu/(hr)*(ft^2)*(F/ft), from fig.1
Pr=((c)*(mu2)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
Hi=((jH)*(k/D)*(Pr)*(1^0.14)); //Hi=(hi/phyp),using eq.6.15a,Btu/(hr)*(ft^2)*(F)
printf("\t Hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hi);
ID=0.81; // ft
OD=1; //ft
Hio=((Hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct Hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hio);
muw=1.5*2.42; // lb/(ft)*(hr), from fig.14
phyt=(mu2/muw)^0.14;
printf("\t phyt is : %.2f \n",phyt); // from fig.24
hio=(Hio)*(phyt); // from eq.6.37
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
tw=(tc)+(((Ho)/(Hio+Ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
muw=0.56*2.42; // lb/(ft)*(hr), from fig.14
phys=(mu1/muw)^0.14;
printf("\t phys is : %.2f \n",phys); // from fig.24
ho=(Ho)*(phys); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.2618; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.5f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
f=0.00175; // friction factor for reynolds number 25300, using fig.29
s=0.73; // for reynolds number 25300,using fig.6
Ds=21.25/12; // ft
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPa is 10 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.000285; // friction factor for reynolds number 8220, using fig.26
s=0.83;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.15; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPs is 10 psi \n");
//end
