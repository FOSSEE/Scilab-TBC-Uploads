printf("\t example 15.4\n");
printf("\t approximate values are mentioned in the book \n");
t1=315; // inlet cold fluid,F
t2=335; // outlet cold fluid,F
T1=525;
T2=400;
Wv=29000; // lb/hr
Ws=38500; // lb/hr
w=51000; // lb/hr
printf("\t 1.for heat balance \n");
Ht1=238; // enthalpy at t1, Btu/lb, fig 9
Ht2=252; // enthalpy at t2, Btu/lb, fig 9
Ht3=378; // enthalpy of vapour at t2 
qv=(Wv*(Ht3-Ht2)); // for preheat
printf("\t qv is : %.2e Btu/hr \n",qv);
qs=Ws*(Ht2-Ht1);
printf("\t qs is : %.2e Btu/hr \n",qs);
Q=qs+qv;
printf("\t total heat required for naphtha is : %.2e Btu/hr \n",Q);
c=0.66; // Btu/(lb)(F)
Q=((w)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for gasoil is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.2f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.3f \n",S);
printf("\t FT is 0.97 \n"); // from fig 18
delt=(0.97*LMTD); // F
printf("\t delt is : %.0f F \n",delt);
X=((delt1)/(delt2)); // fig 17
printf("\t ratio of two local temperature difference is : %.3f \n",X);
Fc=0.41; // from fig.17
Kc=0.42;
Tc=((T2)+((Fc)*(T1-T2))); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+((Fc)*(t2-t1))); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:inner tube side,steam \n");
Nt=116;
n=8; // number of passes
L=12; //ft
at1=0.546; // flow area,table 10, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu1=1.09; // at 451F, fig 14,lb/(ft)*(hr)
D=0.0695; // ft
Ret=((D)*(Gt)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
jH=168; // from fig.24
Z=0.142; // Z=k*((c)*(mu1)/k)^(1/3), fig 16
Hi=((jH)*(1/D)*(Z)); //, Hi=(hi/phyt)using eq.6.15d,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hi);
Hio=((Hi)*(0.834/1)); //Hio=(hio/phyp), using eq.6.9
printf("\t Correct Hio to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hio);
printf("\t cold fluid:shell side,naphtha \n");
ho1=200; // assumption
tw=(tc)+(((Hio)/(Hio+ho1))*(Tc-tc)); // from eq.5.31, calculation mistake
printf("\t tw is : %.0f F \n",tw);
deltw=(tw-tc);
printf("\t deltw : %.0f F \n",deltw);
// from fig 15.11, hv>300, hs=60
Av=(qv/300);
As=qs/60;
printf("\t qv/hv : %.3e \n",Av);
printf("\t qs/hs : %.0e \n",As);
A1=As+Av;
printf("\t A : %.3e \n",A1);
ho=(Q/A1);
printf("\t ho : %.0f \n",ho);
Uc=((Hio)*(ho)/(Hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.2618; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
// check for max. flux=Q/A=11500.(satisfactory)
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for inner pipe \n");
f=0.000168; // friction factor for reynolds number 59200, using fig.26
s=0.73;
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.11; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPa is negligible \n");
printf("\t pressure drop  for annulus \n");
Af=(3.14*(21.25^2-(116))/8);
printf("\t flow area : %.0f in^2 \n",Af);
as=0.917; // ft^2
p=(3.14*21.25/2)+(3.14*1*116/2)+(21.25);
printf("\t wetted perimeter : %.1f in \n",p);
De=0.186; // ft
Gs=(Ws/(2*as)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gs);
mu2=0.435; // at 315F, fig 14,lb/(ft)*(hr)
Res=((De)*(Gs)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
f=0.00028; // using fig.26
row=0.337; // fig 13.14
// soutlet max=0.071,
s=0.35; // using fig.6
phys=1;
delPs=((f*(Gs^2)*(L))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.4f psi \n",delPs);
printf("\t allowable delPa is .25 psi \n");
//end
