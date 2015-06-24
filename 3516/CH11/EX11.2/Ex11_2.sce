printf("\t example 11.2 \n");
printf("\t approximate values are mentioned in the book \n");   
T1=350; // inlet hot fluid,F
T2=160; // outlet hot fluid,F
t1=100; // inlet cold fluid,F
t2=295; // outlet cold fluid,F
W=84438; // lb/hr
w=86357; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for lean oil \n");
c=0.56; // Btu/(lb)*(F)
Qh=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for lean oil is : %.2e Btu/hr \n",Qh);
printf("\t for rich oil \n");
c=0.53; // Btu/(lb)*(F)
Qc=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for rich oil is : %.2e Btu/hr \n",Qc);
Q=(Qh+Qc)/(2);
printf("\t Q is : %.2e V \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.3f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.2f \n",S);
printf("\t FT is 0.875 \n"); // for 4-8 exchanger,from fig 21
delt=(0.875*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
X=((delt1)/(delt2));
printf("\t ratio of two local temperature difference is : %.2f \n",X);
Fc=0.48; // from fig.17
Kc=0.32; // crude oil controlling
Tc=((T2)+((Fc)*(T1-T2))); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+((Fc)*(t2-t1))); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f \n",tc);
UD1=50; // assume, from table 8a
A1=((Q)/((UD1)*(delt)));
printf("\t A1 is : %.2e ft^2 \n",A1);
a1=0.1963; // ft^2/lin ft
N1=(A1/(16*a1*2)); // 2-4 exchanger in series
printf("\t number of tubes are : %.0f \n",N1);
N2=580; // assuming six tube passes,31in ID, from table 9
A2=(N2*16*a1*2); // ft^2
printf("\t total surface area is : %.2e ft^2 \n",A2);
UD=((Q)/((A2)*(delt)));
printf("\t correct design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
printf("\t hot fluid:inner tube side,lean oil \n");
Nt=580;
n=6; // number of passes
L=16; //ft
at1=0.302; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(W/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=2.13; // at 212F,lb/(ft)*(hr)
D=0.0517; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
jH=36.5; // from fig.24
Z=0.185; // Z=(K*(c*mu3/k)^(1/3)),Btu/(hr)(ft^2)(F/ft), at mu4=0.88cp and 35 API
Hi=((jH)*(1/D)*(Z)); //Hi=(hi/phyp),using eq.6.15a,Btu/(hr)*(ft^2)*(F)
printf("\t Hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hi);
ID=0.62; // ft
OD=0.75; //ft
Hio=((Hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct Hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hio);
phyt=1;
hio=(Hio)*(phyt); // from eq.6.37
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
printf("\t cold fluid:shell side,rich oil \n");
ID=31; // in
C=0.25; // clearance
B=12; // minimum baffle spacing,from eq 11.4,in
PT=1;
as=((ID*C*B)/(144*PT))/(2); // flow area,from eq 7.1,ft^2
printf("\t flow area is : %.3f ft^2 \n",as);
Gs=(w/as); // mass velocity,from eq 7.2,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=3.15; // at 193.5F,lb/(ft)*(hr), from fig.14
De=0.95/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=45; // from fig.28
Z=0.213; // Z=(K*(c*mu3/k)^(1/3)),Btu/(hr)(ft^2)(F/ft), at mu3=1.3cp and 35 API
Ho=((jH)*(1/De)*(Z)); // H0=(h0/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Ho);
phys=1;
ho=(Ho)*(phys); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t pressure drop  for inner pipe \n");
f=0.00027; // friction factor for reynolds number 10100, using fig.26
s=0.77;
delPt=((2*f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.024; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*2*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPT is 10 psi \n");
printf("\t pressure drop  for annulus \n");
f=0.0023; // friction factor for reynolds number 6720, using fig.29
s=0.79; // for reynolds number 6720,using fig.6
Ds=31/12; // ft
De=0.0792;
N=(4*12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPa is 10 psi \n");
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t The initial assumptions have provided an exchanger which very nearly meets all the requirements. Eight-pass units would meet the heat-transfer requirement but would give a tube-side pressure drop of 14 psi. The trial exchanger will be somewhat less suitable when the value of Q, is also taken into account. If the minimum dirt factor of 0.0040 is to be taken literally, it will be necessary to try the next size shell \n");
printf("\t Assume a 33 in. ID shell with six1 tube passes and baffies spaced 12-in. apart, since the pressure drop increases with the diameter of the shell for a given mass velocity. \n");
UC1=52.3;
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UC1);
UD2=42;
printf("\t correct design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD2);
Rd1=0.0047; 
printf("\t calculated Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd1);
Rd2=0.004; 
printf("\t actual Rd is : %.3f (hr)*(ft^2)*(F)/Btu \n",Rd2);
delPs1=4.4;
printf("\t delPs is : %.1f psi \n",delPs1);
delPT1=7.9;
printf("\t delPt is : %.1f psi \n",delPT1);
//end
