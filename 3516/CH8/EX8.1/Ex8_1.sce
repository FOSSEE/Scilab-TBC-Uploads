printf("\t example 8.1 \n");
printf("\t approximate values are mentioned in the book \n");
T1=358; // inlet hot fluid,F
T2=100; // outlet hot fluid,F
t1=90; // inlet cold fluid,F
t2=120; // outlet cold fluid,F
W=49600; // lb/hr
w=233000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for oil \n");
c=0.545; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for oil is : %.2e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for water is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.1f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.3f \n",S);
printf("\t FT is 0.93 \n"); // from fig 19 for 2-4 exchanger
delt=(0.93*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
X=((delt1)/(delt2));
printf("\t ratio of two local temperature difference is : %.3f \n",X);
Fc=0.25; // from fig.17
Kc=0.47; // crude oil controlling
Tc=((T2)+((Fc)*(T1-T2))); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+((Fc)*(t2-t1))); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,oil \n");
ID=35; // in
C=0.25; // clearance
B=7; // baffle spacing,in
PT=1.25;
as=((ID*C*B)/(144*PT))/2; // flow area,ft^2,from eq 7.1
printf("\t flow area is : %.2f ft^2 \n",as);
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2),from eq 7.2
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=1.12*2.42; // at 165F,lb/(ft)*(hr), from fig.14
De=0.99/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.1e \n",Res);
jH=52.5; // from fig.28
Z=0.2; // Z=(k)*(Pr*(1/3)) prandelt number
Ho=((jH)*(1/De)*(Z)); // H0=(h0/phys),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Ho);
printf("\t cold fluid:inner tube side,water \n");
Nt=454;
n=6; // number of passes
L=12; //ft
at1=0.455; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5)); // fps
printf("\t V is : %.2f fps \n",V);
mu2=0.73*2.42; // at 98F,lb/(ft)*(hr),from fig 14
D=(0.76/12); // ft,from table 10
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=1010*0.96; // using fig 25,Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.76; // ft
OD=1; //ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
tw=(tc)+(((Ho)/(hio+Ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
muw=1.95*2.42; // lb/(ft)*(hr), from fig.14
phys=(mu1/muw)^0.14;
printf("\t phys is : %.2f \n",phys); // from fig.24
ho=(Ho)*(phys); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
A2=0.2618; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
Q=6980000; // taking rounded value,Btu/hr
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
f=0.00215; // friction factor for reynolds number 8900, using fig.29
s=0.82; // for reynolds number 25300,using fig.6
Ds=35/12; // ft
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(2*N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.0f psi \n",delPs);
printf("\t allowable delPs is 10 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.000195; // friction factor for reynolds number 34900, using fig.26
s=1;
D=0.0633; //ft
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.13; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPT is 10 psi \n");
//end
