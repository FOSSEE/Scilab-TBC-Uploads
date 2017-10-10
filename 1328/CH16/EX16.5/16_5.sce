printf("\t example 16.5 \n");
printf("\t approximate values are mentioned in the book \n");
T1=250; // inlet hot fluid,F
T2=200; // outlet hot fluid,F
t1=150; // inlet cold fluid,F
t2=190; // outlet cold fluid,F
W=100000; // lb/hr
w=31200; // lb/hr
printf("\t 1.for heat balance \n")
C=0.25; // Btu/(lb)*(F)
Q=((W)*(C)*(T1-T2)); // Btu/hr
printf("\t total heat required for air is : %.2e Btu/hr \n",Q);
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
printf("\t FT is 0.985 \n"); // from fig 18
delt=(0.985*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
Tc=(T2+T1)/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
Af=(3.14*2*8*12*(1.75^2-1^2))/(4);
Ao=((3.14*1*12)-(3.14*1*8*0.035*12));
printf("\t fin surface is : %.0f in^2/lin ft \n",Af);
printf("\t bare tube surface is : %.1f in^2/lin ft \n",Ao);
A=(Af+Ao);
printf("\t total outside surface : %.1f ft^2/lin ft \n",A);
p=(2*3*2*8*12/8)+(((12)-(8*0.035*12))*(2));
printf("\t projected perimeter : %.1f in/ft \n",p);
De=(2*A/(3.14*p*12)); // eq 16.104
printf("\t De : %.3f ft \n",De);
// 21 tubes may be fit in one :vertical bank (Fig. 16.19b) ,20 tubes in alternating banks for triangular pitch
as=((4^2*12^2)-(21*1*48)-((21)*(2*0.035*3*8*48/8)))/(144); // fig 16.19
printf("\t flow area : %.1f ft^2 \n",as);
printf("\t hot fluid:shell side,oxygen \n");
Gs=(W/as); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=0.052; // at 225F,lb/(ft)*(hr), from fig.15
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jf=157; // from fig.16.18a
k=0.0183;
Z=0.89; // Z=((c)*(mu1)/k)^(1/3), fig
phys=1;
hf=((jf)*(k/De)*(Z)); //using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",hf);
Rdo=0.003;
hdo=(1/Rdo);
hf1=(hdo*hf)/(hdo+hf); // eq 16.37
printf("\t hf1 : %.1f \n",hf1);
hfi1=142; // fig 16.9
printf("\t cold fluid:inner tube side,water \n");
at1=0.546; // table 10
L=4;
Nt=21;
n=1;
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.4f ft^2 \n",at);
D=0.0695; // ft
row=62.5;
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*row));
printf("\t V is : %.2f fps \n",V);
mu2=0.895; // at 170F,lb/(ft)*(hr)
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=(710*0.94); // fig 25
printf("\t hi : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
Rdi=0.003;
hdi=(1/Rdi);
hi1=(hdi*hi)/(hdi+hi); // 16.40
printf("\t hi1 : %.0f Btu/(hr)*(ft^2)*(F) \n",hi1);
k1=60; // table 3 , for brass
// yb=0.00146 ft
X=((0.875-0.5)/12)*(21.5/(60*0.00146))^(1/2);
printf("\t X :%.2f \n",X);
nf=0.91; // from fig 16.13a , by comparing X value
Ai=0.218; // ft^2/ft
hfi2=((nf*Af/144)+(Ao/144))*(hf1/Ai); // eq 16.34
printf("\t hfi2 : %.0f \n",hfi2);
UDi=((hfi2)*(hi1)/(hi1+hfi2)); // eq 16.41,Btu/(hr)*(ft^2)*(F)
printf("\t overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UDi);
A=(21*4*Ai); // ft^2
printf("\t inside surface per bank is : %.1f ft^2 \n",A);
Ai1=(Q/(UDi*delt));
printf("\t Ai1 : %.0f ft^2 \n",Ai1);
Nb=(Ai1/A);
printf("\t number of banks : %.0f \n",Nb);
Vn=(4*4*1.95/12)-(41*3.14*1*4/(2*4*144))-((41*3.14*0.035*8*4/(144*2*4))*(1.75^2-1^2)); // fig 16.19b
printf("\t net free volume : %.2f ft^3 \n",Vn);
Af1=(41*2.34*4/2);
printf("\t frictional surface : %.0f ft^2 \n",Af1);
printf("\t pressure drop  for annulus \n");
De1=(4*Vn/Af1); // ft
printf("\t De1 : %.2f ft \n",De1);
Res1=(De1*Gs/mu1);
printf("\t reynolds number : %.2e \n",Res1);
f=0.0024; // fig 16.18b
s=0.000928;
Lp=1.95;
R1=0.538; // R1=(De1/ST)^(0.4)
R2=1; // R2=(SL/ST)^0.6
delPs=((f*(Gs^2)*(Lp)*(R1)*(R2))/(5.22*(10^10)*(De1)*(s)*(1)));
printf("\t delPs is : %.2f psi \n",delPs);
printf("\t pressure drop  for inner pipe \n");
f=0.0002; // friction factor for reynolds number 30400, using fig.26
s=1;
delPt=((f*(Gt^2)*(L)*(Nb))/(5.22*(10^10)*(0.0695)*(s)*(1))); // using eq.7.45,psi
printf("\t delPt is : %.2f psi \n",delPt);
//end
