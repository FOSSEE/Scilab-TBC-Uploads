printf("\t example 15.3 \n");
printf("\t approximate values are mentioned in the book \n");
ts=400;
T1=575;
T2=475;
W=28100; // lb/hr
w=34700; // lb/hr
printf("\t 1.for heat balance \n");
HT1=290; // enthalpy at T1, Btu/lb, fig 11
HT2=385; // enthalpy at T2, Btu/lb, fig 11
Q=(W*(HT2-HT1)); // for preheat
printf("\t total heat required for gasoline is : %.2e Btu/hr \n",Q);
c=0.77; // Btu/(lb), table 7
Q=((w)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for gasoil is : %.2e Btu/hr \n",Q);
delt=118; // F eq 5.14
S=((T2-ts)/(T1-ts));
printf("\t S is : %.3f \n",S);
Kc=0.37; // fig 17
Fc=0.42;
Tc=(T2+(0.42*(T1-T2)));
printf("\t Tc is : %.0f F \n",Tc);
printf("\t hot fluid:inner tube side,gasoil \n");
Nt=68;
n=6; // number of passes
L=12; //ft
at1=0.546; // flow area,table 10, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu1=0.65; // at 517F, fig 14,lb/(ft)*(hr)
D=0.0694; // ft
Ret=((D)*(Gt)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
jH=220; // from fig.24
Z=0.118; // Z=k*((c)*(mu1)/k)^(1/3), fig 16
Hi=((jH)*(1/D)*(Z)); //hi/phyt, Hi=()using eq.6.15d,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hi);
Hio=((Hi)*(0.834/1)); //Hio=(hio/phyp), using eq.6.9
printf("\t Correct Hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hio);
// (mu1/muw)^(0.14) is negligible
printf("\t cold fluid:shell side,gasoline \n");
ho=300; // assumption
tw=(ts)+(((Hio)/(Hio+ho))*(Tc-ts)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
deltw=(tw-ts);
printf("\t deltw : %.0f F \n",deltw);
// from fig 15.11, ho>300
Uc=((Hio)*(ho)/(Hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.2618; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
// check for max. flux=Q/A=12500.(satisfactory)
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for inner pipe \n");
f=0.00015; // friction factor for reynolds number 85700, using fig.26
s=0.71;
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.09; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPa is 10psi \n");
printf("\t delPs is negligible \n");
//end
