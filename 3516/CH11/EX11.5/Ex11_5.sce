printf("\t example 11.5 \n");
printf("\t approximate values are mentioned in the book \n");
T1=250; // inlet hot fluid,F
T2=125; // outlet hot fluid,F
t1=80; // inlet cold fluid,F
t2=100; // outlet cold fluid,F
W=41300; // lb/hr
w=64500; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for gas \n");
c=0.25; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for gas is : %.2e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for water is : %.2e Btu/hr \n",Q);
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
printf("\t FT is 0.935 \n"); // from fig 18
delt=(0.935*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
Tc=((T2)+(T1))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
UD1=15; // assume, from table 8
A1=((Q)/((UD1)*(delt)));
printf("\t A1 is : %.0f ft^2 \n",A1);
a1=0.2618; // ft^2/lin ft
N1=(A1/(12*a1));
printf("\t number of tubes are : %.0f \n",N1);
N2=358; // assuming 12 tube passes, from table 9
L=12;
A2=(N2*L*a1); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A2);
UD=((Q)/((A2)*(delt)));
printf("\t correct design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
printf("\t When solved in a manner identical with the preceding examples and using the smallest integral number of bundle crosses (five) corresponding to a 28.8in.spacing \n");
UC1=22.7;
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UC1);
UD2=14;
printf("\t correct design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD2);
Rd1=0.027; 
printf("\t calculated Rd is : %.3f (hr)*(ft^2)*(F)/Btu \n",Rd1);
Rd1=0.005; 
printf("\t required Rd is : %.3f (hr)*(ft^2)*(F)/Btu \n",Rd1);
delPs1=5.2;
printf("\t delPs is : %.1f psi \n",delPs1);
delPt1=1.0;
printf("\t delPt is : %.1f psi \n",delPt1);
printf("\t The first trial is disqualified because of failure to meet the required dirt factor and the the pressure drop is five times greater than the allowable \n");
printf("\t This would be unsatisfactory, since gases require large inlet connections and the flow distribution on the first and third bundle crosses would be poor and the conditions of allowable pressure drop would still not be met \n");
UD1=15; // assume, from table 8
A1=((Q)/((UD1)*(delt)));
printf("\t A1 is : %.0f ft^2 \n",A1);
a1=0.2618; // ft^2/lin ft
N1=(A1/(12*a1));
printf("\t number of tubes are : %.0f \n",N1);
N2=340; // assuming eight tube passes, from table 9
A2=(N2*L*a1); // ft^2
printf("\t total surface area is : %.2e ft^2 \n",A2);
UD=((Q)/((A2)*(delt)));
printf("\t correct design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
printf("\t hot fluid:shell side,gas \n");
ID=31; // in
C=0.25; // clearance
B=24; // baffle spacing,in
PT=1.25;
as=((ID*C*B)/(144*PT)); // flow area,from eq 7.1,ft^2
printf("\t flow area is : %.2f ft^2 \n",as);
Gs=(W/as)/(2); // mass velocity,from eq 7.2,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.0e lb/(hr)*(ft^2) \n",Gs);
mu1=0.050; // at 187.5F,lb/(ft)*(hr), from fig.15
De=0.99/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.1e \n",Res);
jH=105; // from fig.28
k=0.015; // Btu/(hr)(ft^2)(°F/ft)
Z=0.94; // Z=((c*mu3/k)^(1/3)),Btu/(hr)(ft^2)(F/ft)
Ho=((jH)*(k/De)*(Z)); // H0=(h0/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Ho);
phys=1;
ho=(Ho)*(phys); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.1f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,crude oil \n");
Nt=340;
n=12; // number of passes
L=12; //ft
at1=0.546; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5));
printf("\t V is : %.2f fps \n",V);
mu2=1.96; // at 90F,lb/(ft)*(hr)
D=0.0695; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=667; //Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.83; // ft
OD=1; //ft
hio=((hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio); // calculation mistake
phyt=1;
printf("\t pressure drop  for annulus \n");
f=0.0017; // friction factor for reynolds number 33000, using fig.29
s=0.0012; // for reynolds number 33000,using fig.6
Ds=31/12; // ft
N=(3); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t pressure drop  for inner pipe \n");
f=0.00022; // friction factor for reynolds number 21300, using fig.26
s=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.052; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
// end
