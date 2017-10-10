printf("\t example 7.8 \n");
printf("\t approximate values are mentioned in the book \n");
T1=228; // inlet hot fluid,F
T2=228; // outlet hot fluid,F
t1=100; // inlet cold fluid,F
t2=122; // outlet cold fluid,F
W=200000; // lb/hr
w=3950; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for solution \n");
c=(0.2*0.30)+(0.8*1); // bcoz of 20 percent solution,Btu/(lb)*(F)
Q1=((W)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for solution is : %.2e Btu/hr \n",Q1);
printf("\t for steam \n");
l=960.1; // latent heat of condensation,Btu/(lb)
Q=((w)*(l)); // Btu/hr
printf("\t total heat required for steam is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.0f \n",R);
delt=(LMTD); // when R=0,F
printf("\t delt is : %.1f F \n",delt);
printf("\t The steam coefficient will be very great compared with that for the sugar solution, and the tube wall will be considerably nearer 228°F than the caloric temperature of the fluid. Obtain Fc from U1 and U0 Failure to correct for wall effects, however, will keep the heater calculation on the safe side.\n");
ta=111; //F
Ta=228; //f
printf("\t hot fluid:tube side,steam \n");
Nt=76;
n=2; // number of passes
L=16; //ft
at1=0.302; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.4f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2elb/(hr)*(ft^2) \n",Gt);
mu2=0.0128*2.42; // at 228F,lb/(ft)*(hr)
D=(0.62/12); // from table 10,ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hio=1500; // for condensation of steam
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
printf("\t cold fluid:shell side,sugar solution \n");
ID=12; // in
d=0.75/12; // diameter of tube,ft
Nt=76; // number of tubes
as=((3.14*(12^2)/4)-(76*3.14*(0.75^2)/4))/144; // flow area,ft^2
printf("\t flow area is : %.2f ft^2 \n",as);
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=1.30*2.42; // at 111F,lb/(ft)*(hr), from fig.14
De=((4*as)/(Nt*3.14*d)); // from eq.6.3,ft
printf("\t De is : %.3f ft \n",De);
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=61.5; // from fig.24, tube side data
c=0.86; // Btu/(lb)*(F),at 111F,from fig.4
k=0.333; // Btu/(hr)*(ft^2)*(F/ft)
Pr=((c)*(mu1)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.0f \n",Pr);
Ho=((jH)*(k/De)*(Pr)); // H0=(h0/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Ho);
muw=0.51*2.42; //  at 210F,lb/(ft)*(hr), from fig.14
phys=(mu1/muw)^0.14;
printf("\t phys is : %.2f \n",phys); // from fig.24
ho=(Ho)*(phys); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
tw=(ta)+(((hio)/(hio+Ho))*(Ta-ta)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.1963; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(LMTD)));
printf("\t actual design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for inner pipe \n");
f=0.000155; // friction factor for reynolds number 82500, using fig.26
s=0.0008;
phyt=1;
D=0.0517; 
delPt=((f*(Gt^2)*(L)*(2))/(5.22*(10^10)*(D)*(s)*(phyt)))/2; // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
printf("\t pressure drop  for annulus \n");
De1=((4*as)/((Nt*3.14*d)+(3.14*1))); // from eq.6.4,ft
printf("\t De1 is : %.3f ft \n",De1);
Res1=(De1*Gs/mu1); // from eq 7.3
printf("\t Res1 is : %.2e \n",Res1);
f=0.00025; // friction factor, using fig.26
s=1.08; // for reynolds number 25300,using fig.6
delPs=((f*(Gs^2)*(L)*(1))/(5.22*(10^10)*(De1)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.2f psi \n",delPs);
//end
