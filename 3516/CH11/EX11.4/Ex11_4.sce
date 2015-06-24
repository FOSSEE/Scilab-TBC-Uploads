printf("\t example 11.4 \n");
printf("\t approximate values are mentioned in the book \n");
T1=225; // inlet hot fluid,F
T2=225; // outlet hot fluid,F
t1=80; // inlet cold fluid,F
t2=200; // outlet cold fluid,F
W=10350; // lb/hr
w=115000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for steam \n");
l=962; // Btu/(lb)
Qh=((W)*(l)); // Btu/hr
printf("\t total heat required for steam is : %.2e Btu/hr \n",Qh);
printf("\t for alcohol \n");
c=0.72; // Btu/(lb)*(F)
Qc=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for alcohol is : %.2e Btu/hr \n",Qc);Q=(Qh+Qc)/(2);
Q=(Qh+Qc)/(2);
printf("\t Q is : %.2e V \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
Tc=((T2)+(T1)); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2)); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f \n",tc);
L=12;
UD1=200; // assume, from table 8
A1=((Q)/((UD1)*(LMTD)));
printf("\t A1 is : %.0f ft^2 \n",A1);
a1=0.2618; // ft^2/lin ft
N1=(A1/(12*a1));
printf("\t number of tubes are : %.0f \n",N1);
N2=232; // assuming two tube passes,23.25in ID, from table 9
A2=(N2*L*a1); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A2);
UD=((Q)/((A2)*(LMTD)));
printf("\t correct design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
printf("\t hot fluid:inner tube side,steam \n");
Nt=232;
n=2; // number of passes
L=12; //ft
at1=0.546; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(W/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=0.0314; // at 225F,lb/(ft)*(hr)
D=0.0695; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.1e \n",Ret);
hio=1500; // condensation of steam
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
printf("\t cold fluid:shell side,alcohol \n");
ID=23.25; // in
C=0.25; // clearance
B=7; // minimum baffle spacing,from eq 11.4,in
PT=1.25;
as=((ID*C*B)/(144*PT)); // flow area,from eq 7.1,ft^2
printf("\t flow area is : %.3f ft^2 \n",as);
Gs=(w/as); // mass velocity,from eq 7.2,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=1.45; // at 193.5F,lb/(ft)*(hr), from fig.14
De=0.72/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.1e \n",Res);
jH=83; // from fig.28
Z=0.195; // Z=(K*(c*mu3/k)^(1/3)),Btu/(hr)(ft^2)(F/ft)
Ho=((jH)*(1/De)*(Z)); // H0=(h0/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Ho);
phys=1;
ho=(Ho)*(phys); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t pressure drop  for inner pipe \n");
f=0.000175; // friction factor for reynolds number 52000, using fig.26
s=0.00076;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(1)))/(2); // using eq.7.45,psi
printf("\t delPt is : %.2f psi \n",delPt);
printf("\t delPr is negligible \n");
printf("\t allowable delPa is negligible \n");
printf("\t pressure drop  for annulus \n");
f=0.0018; // friction factor for reynolds number 21000, using fig.29
s=0.78; // for reynolds number 21000,using fig.6
Ds=1.94; // ft
De=0.06;
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPa is 10 psi \n");
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.6f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t This is clearly an instance in which UD was assumed too high.It is now a question of how much too high. With the aid of the summary it is apparent thatin a larger shell a clean overall coefficient of about 200 may be expected \n");
printf("\t Assume a 27in. ID shell with 2 tube passes,334 tubes and baffies spaced 7in. apart, since the pressure drop increases with the diameter of the shell for a given mass velocity. \n");
UC1=214;
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UC1);
UD2=138.5;
printf("\t correct design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD2);
Rd1=0.0025; 
printf("\t calculated Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd1);
Rd2=0.002; 
printf("\t actual Rd is : %.3f (hr)*(ft^2)*(F)/Btu \n",Rd2);
delPs1=0.23;
printf("\t delPs is : %.2f psi \n",delPs1);
delPT1=7.1;
printf("\t delPt is : %.1f psi \n",delPT1);
//end
