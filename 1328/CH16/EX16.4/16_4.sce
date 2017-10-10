printf("\t example 16.4 \n");
printf("\t approximate values are mentioned in the book \n");
T1=250; // inlet hot fluid,F
T2=100; // outlet hot fluid,F
t1=80; // inlet cold fluid,F
t2=100; // outlet cold fluid,F
W=30000; // lb/hr
w=50500; // lb/hr
printf("\t 1.for heat balance \n")
C=0.225; // Btu/(lb)*(F)
Q=((W)*(C)*(T1-T2)); // Btu/hr
printf("\t total heat required for oxygwn is : %.2e Btu/hr \n",Q);
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
printf("\t R is : %.1f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.4f \n",S);
printf("\t FT is 0.87 \n"); // from fig 18
delt=(0.87*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
Tc=(T2+T1)/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,oxygen \n");
ID=19.25; // in, table 11
OD=1; // in, table 11
as=((3.14*ID^2/(4))-(70*3.14*OD^2/(4))-(70*20*0.035*0.5))/(144);
printf("\t flow area is : %.2f ft^2 \n",as);
p=(70*3.14*(OD))-(70*20*0.035)+(70*20*0.5*2);
printf("\t wetted perimeter : %.2e in \n",p);
De=(4*as*12/(p));
printf("\t De : %.3f ft \n",De);
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=0.0545; // at 175F,lb/(ft)*(hr), from fig.15
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.3e \n",Res);
jH=59.5; // from fig.16.10a
k=0.0175;
Z=0.89; // Z=((c)*(mu1)/k)^(1/3), fig
hf=((jH)*(k/De)*(Z)); //using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",hf);
Rdo=0.003;
hdo=(1/Rdo);
hf1=(hdo*hf)/(hdo+hf); // eq 16.37
printf("\t hf1 : %.1f \n",hf1);
hfi1=142; // fig 16.9
printf("\t cold fluid:inner tube side,water \n");
at1=0.479; // table 10
L=16;
Nt=70;
n=4;
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.4f ft^2 \n",at);
D=0.0652; // ft
row=62.5;
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*row));
printf("\t V is : %.2f fps \n",V);
mu2=1.94; // at 90F,lb/(ft)*(hr)
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=(940*0.96); // fig 25
printf("\t hi : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
Rdi=0.003;
hdi=(1/Rdi);
hi1=(hdi*hi)/(hdi+hi);
printf("\t hi1 : %.0f Btu/(hr)*(ft^2)*(F) \n",hi1);
UDi=((hfi1)*(hi1)/(hi1+hfi1)); // eq 16.41,Btu/(hr)*(ft^2)*(F)
printf("\t overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UDi);
A2=0.2048; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UDi1=((Q)/((A)*(delt)));
printf("\t design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UDi1);
Re=(1/UDi1)-(1/UDi);
printf("\t excess fouling factor : %.5f \n",Re);
Ro=9.27; //Adding to the outside fouling factor
Rdo1=Rdo+(Re*Ro);
printf("\t Rdo : %.4f \n",Rdo1);
hf2=(hf/(1+(hf*Rdo1)));
printf("\t hf2 : %.1f \n",hf2);
hfi2=113;
UDi2=((hfi2)*(hi1)/(hi1+hfi2)); // eq 16.41,Btu/(hr)*(ft^2)*(F)
printf("\t overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UDi2);
printf("\t pressure drop  for annulus \n");
De1=0.0433; // ft
Res1=(De1*Gs/mu1);
printf("\t reynolds number : %.2e \n",Res1);
f=0.00025; // fig 16.10
s=0.00133;
delPs=((f*(Gs^2)*(L))/(5.22*(10^10)*(De1)*(s)*(1))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPa is 2 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.00021; // friction factor for reynolds number 29100, using fig.26
s=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(0.0625)*(s)*(1))); // using eq.7.45,psi
printf("\t delPt is : %.0f psi \n",delPt);
printf("\t allowable delPa is 10 psi \n");
//end
