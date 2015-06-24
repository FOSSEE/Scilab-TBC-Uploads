printf("\t example 13.3 \n");
printf("\t approximate values are mentioned in the book \n");
printf("\t for condensing range \n");
V(1)=170.5; // volume of C3,Mol/hr
V(2)=284; // volume of C4,Mol/hr
V(3)=56.8; // volume of C6,Mol/hr
V(4)=341.1; // volume of C7,Mol/hr
V(5)=284; // volume of C8,Mol/hr
Tw=283; // dew point assumption
Tb=120; // bubble point assumption
K(1)=13.75 // at 283F
K(2)=6.18 // at 283F
K(3)=1.60 // at 283F
K(4)=0.825 // at 283F
K(5)=0.452 // at 283F
i=1;
while(i<6)
    Z(i)=(V(i)/K(i));
    i=i+1;
end
Vt=V(1)+V(2)+V(3)+V(4)+V(5);
Zt=Z(1)+Z(2)+Z(3)+Z(4)+Z(5);
L(1)=170.5; // volume of C3,Mol/hr
L(2)=284; // volume of C4,Mol/hr
L(3)=56.8; // volume of C6,Mol/hr
L(4)=341.1; // volume of C7,Mol/hr
L(5)=284; // volume of C8,Mol/hr
Kl(1)=4.1 // at 283F
Kl(2)=1.39 // at 283F
Kl(3)=0.17 // at 283F
Kl(4)=0.06 // at 283F
Kl(5)=0.023 // at 283F
i=1;
while(i<6)
    Zl(i)=(L(i)*Kl(i));
    printf(" \n V(i)      K(i)      Z(i)      L(i)       Kl(i)       Zl(i) \n "+string(V(i))+"      "+string(K(i))+"      "+string(Z(i))+"      "+string(L(i))+"      "+string(Kl(i))+"      "+string(Zl(i))+" \n");
    i=i+1;
end
Lt=L(1)+L(2)+L(3)+L(4)+L(5);
Zlt=Zl(1)+Zl(2)+Zl(3)+Zl(4)+Zl(5);
printf("\t total volume in vapour phase : %.1f \n",Vt);
printf("\t total Zt in vapour phase : %.1f \n",Zt);
printf("\t total volume in liquid phase : %.1f \n",Lt);
printf("\t total Zlt in liquid phase : %.1f \n",Zlt);
// Range: 283 to 270°F
// Trial: Assume V /L = 4.00.
R=4; // R=(V/L), assumption
K(1)=12.75 // at 270F
K(2)=5.61 // at 270F
K(3)=1.40 // at 270F
K(4)=0.705 // at 270F
K(5)=0.375 // at 270F
i=1;
Y(i)=V(i);
while(i<6)
    P(i)=(K(i)*R);
    L1(i)=(V(i)/(1+P(i))); // V(i)=Y(i)
    printf(" \n Y(i)      K(i)      P(i)      L1(i) \n "+string(V(i))+"      "+string(K(i))+"      "+string(P(i))+"      "+string(L1(i))+" \n");
    i=i+1;
end
L1t=L1(1)+L1(2)+L1(3)+L1(4)+L1(5);
V1t=(Vt-L1t);
R1=(V1t/L1t);
printf("\t total liquid at 270F : %.0f \n",L1t);
printf("\t total vapour at 270F : %.0f \n",V1t);
printf("\t R1 is : %.0f \n",R1);
// If the assumed and calculated values of V /L had not checked, a new value would have been assumed.
printf("\t for condensing curve \n");
R270=4; // V/L at 270, from table 13.2
R270=1.567; // V/L at 250, from table 13.2
R270=0.916; // V/L at 230, from table 13.2
R270=0.520; // V/L at 200, from table 13.2
R270=0.226; // V/L at 160, from table 13.2
H270=30835500; // 4th table in solution ,enthalpies calculated from fig 10
printf("\t heat load at 270F is : %.0f Btu/hr \n",H270);
H250=27042400; // 5th table in solution ,enthalpies calculated from fig 10
printf("\t heat load at 250F is : %.0f Btu/hr \n",H250);
Q=H270-H250;
printf("\t heat load for interval 270-250F : %.0f Btu/hr \n",Q);
qt=21203000; // 6th table in solution, calculated from fig 10
printf("\t heat load for entire range is : %.0f Btu/hr \n",qt);
M=210410; // M=sum(U*A), 6th table in solution, calculated from fig 10
w=(qt/(120-80));
printf("\t water flow rate : %.1e lb/hr \n",w);
W=95450; // flow rate of feed,lb/hr
delt=(qt/M);
printf("\t weighted delt is : %.1f F \n",delt);
q1=[0 3.4765 7.2696 10.109 13.468 17.399 21.203];
T1=[283 270 250 230 200 160 120];
plot2d(q1,T1,style=3,rect=[0,0,25,300]);
q2=[0 21.203];
T2=[283 120];
plot2d(q2,T2,style=5,rect=[0,0,25,300]);
xtitle("condensing curve","heat load,Btu/hr","temperature,F");
legend("green-differential vapour","red-vapour");
printf("\t calculation of the exchanger \n");
T1=283; // inlet hot fluid,F
T2=120; // outlet hot fluid,F
t1=80; // inlet cold fluid,F
t2=120; // outlet cold fluid,F
L=16;
Nt=774;
n=4;
row=62.5;
Qs=21203000; // Btu/hr
Qw=(w*1*(120-80));
printf("\t heat absorbed by water : %.4e Btu/hr \n",Qw);
Mavg=84; // This corresponds very closely to hexane (mol. Wt. = 86.2) whose properties will be used throughout.
Qc=W*(0.6/2)*(283-120);
printf("\t condensate sensible heat load: %.2e Btu/hr \n",Qc);
S=(Qc*(100/Qs));
printf("\t submergence : %.0f \n",S);
Tc=((T1+T2)/2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1+t2)/2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shellside,vapour \n");
Nts=(774*(1-.22)); // as submergence is 22%
printf("\t unmerged tubes : %.0f \n",Nts);
Gs=(W/(L*(Nts^(2/3)))); // eq 12.43
printf("\t Gs is : %.1f \n",Gs);
Ho=200; // assumption
printf("\t cold fluid:inner tube side,water \n");
at1=0.302; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*row));
printf("\t V is : %.2f fps \n",V);
hi=1355; // fig 25
ID=0.62;
OD=0.75;
hio=((hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct hio to the surface at the OD is : %.2e Btu/(hr)*(ft^2)*(F) \n",hio);
tw=(tc)+(((Ho)/(hio+Ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
tf=(Tc+tw)/(2); // from eq 12.19
printf("\t tf is : %.0f F \n",tf);
kf=0.077; //table 4, Btu/(hr)*(ft^2)*(F/ft)
sf=0.60; // from table 6
muf=0.21; // cp, from fig 14
ho=206; // Btu/(hr)*(ft^2)*(F), from fig 12.9
printf("\t Correct ho to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Ac=(Qw/(174*delt));
printf("\t clean surface required for condensation : %.2e ft^2 \n",Ac);
As=1210*0.22;
printf("\t clean surface required for subcooling : %.0f ft^2 \n",As);
AG=As+Ac;
printf("\t total clean surface : %.0f ft^2 \n",AG);
UC=(Qw/(AG*delt));
printf("\t weighted clean overall coefficient : %.0f Btu/(hr)*(ft^2)*(F) \n",UC);
A2=0.1963; // actual surface supplied for each tube,ft^2,from table 10
A=(Nt*L*A2); // ft^2
printf("\t total surface area is : %.2e ft^2 \n",A);
UD=((Qw)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((UC-UD)/((UD)*(UC))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.5f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
B=30;
as=33*0.25*(30/144)*1; // eq 7.1
printf("\t as is : %.2f ft^2 \n",as);
Gs=(W/as);
printf("\t Gs is : %.2e lb/(hr)*(ft^2) \n",Gs); // eq 7.2
mu1=0.0218; // at 283F
De=0.0608; // ft, from fig 15
Res=(De*Gs)/(mu1);
printf("\t reynolds number is : %.2e \n",Res);
f=0.00125; // fig 29
N=(12*L/B); // eq 7.43
printf("\t number crosses : %.0f \n",N);
row1=0.527; //lb/ft^3
s=0.00844;
Ds=2.75; // ft
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(1)))/(2); // using eq 12.47,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t pressure drop  for inner pipe \n");
mu2=1.74; // fig 14
D=0.0517; // ft
s=1;
Ret=(D*Gt/mu2);
printf("\t reynolds number : %.2e \n",Ret);
f=0.00019; // ft^2/in^2
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(1)*(1))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.23; // X1=((V^2)/(2*g)),using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPa is 10 psi \n");
// end
