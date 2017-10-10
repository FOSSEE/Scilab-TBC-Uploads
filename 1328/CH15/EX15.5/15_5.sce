printf("\t example 15.5\n");
printf("\t approximate values are mentioned in the book \n");
W=40800; // lb/hr
w=4570; // lb/hr
printf("\t 1.for heat balance \n");
Ht1=241; // enthalpy of liquid at 228F, Btu/lb, fig 9
Ht2=338; // enthalpy of vapourat 228F, Btu/lb, fig 9
Q=(W*(Ht2-Ht1));
printf("\t total heat required for butane is : %.2e Btu/hr \n",Q);
l=868; // Btu/(lb), table 7
Q=((w)*(l)); // Btu/hr
printf("\t total heat required for steam is : %.2e Btu/hr \n",Q);
delt=125; // delt=LMTD, isothermal boiling, eq 5.14
// Tc and tc: Both streams are isuthermal
printf("\t trail 1 \n");
A1=((Q)/((12000))); // Q/A1 =12000, first trial should always be taken for the maximum allowable flux
printf("\t A1 is : %.1e ft^2 \n",A1);
a1=0.1963; // ft^2/lin ft
L=16;
N1=(A1/(L*a1)); // table 10
printf("\t number of tubes are : %.0f \n",N1);
N2=109; // assuming one tube passes, 13.25-in ID, from table 9
A2=(N2*L*a1); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A2);
UD=((Q)/((A2)*(delt)));
printf("\t correct design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
// Assume 4: 1 recirculation ratio
rowv=(58/(359*(688/492)*(14.7/290))); // eq 15.18
printf("\t vapour density : %.2f lb/ft^3 \n",rowv);
Vv=0.44; 
Vl=0.0372; // fig 6
W1=4*W;
printf("\t weight flow of recirculated liquid : %.3e lb/hr \n",W1);
VL=W1*Vl;
VV=W*Vv;
printf("\t volume of liquid : %.2e ft^3 \n",VL);
printf("\t volume of vapour : %.3e ft^3 \n",VV);
V=VL+VV;
printf("\t total volume out of reboiler : %.3e ft^3 \n",V);
vo=(V/(W1+W));
printf("\t vo is : %.4f ft^3/lb \n",vo);
Pl=((2.3*16)/(144*(vo-Vl)))*(log10(vo/Vl));
printf("\t pressure leg : %.1f psi \n",Pl);
printf("\t frictional resistance \n");
Nt=109;
n=1; // number of passes
at1=0.302; // flow area,table 10, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=((W1+W)/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu1=0.242; // at 228F, fig 14,lb/(ft)*(hr)
D=0.0517; // ft
Ret=((D)*(Gt)/mu1); // reynolds number
printf("\t reynolds number is : %.1e \n",Ret);
f=0.000127; // using fig.26
s=0.285;
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.2f psi \n",delPt);
P=Pl+delPt;
printf("\t total resisitance : %.2f psi \n",P);
F=(16*0.43*62.5/144);
printf("\t driving force : %.2f psi \n",F);
// The resistances are greater than the hydrostatic head can provide; hence the recirculation ratio will be less than 4: 1
printf("\t trial 2 \n"); // Assume 12'0" tubes and 4:1 recirculation ratio
A1=((Q)/((12000))); // Q/A1 =12000, first trial should always be taken for the maximum allowable flux
printf("\t A1 is : %.1e ft^2 \n",A1);
a1=0.1963; // ft^2/lin ft
L=12;
N1=(A1/(L*a1)); // table 10
printf("\t number of tubes are : %.0f \n",N1);
N2=151; // assuming one tube passes, 15.25-in ID, from table 9
A2=(N2*L*a1); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A2);
UD=((Q)/((A2)*(delt)));
printf("\t correct design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
Pl=((2.3*12)/(144*(vo-Vl)))*(log10(vo/Vl));
printf("\t pressure leg : %.1f psi \n",Pl);
printf("\t frictional resistance \n");
Nt=151;
n=1; // number of passes
at1=0.302; // flow area,table 10, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=((W1+W)/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu1=0.242; // at 228F, fig 14,lb/(ft)*(hr)
D=0.0517; // ft
Ret=((D)*(Gt)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
f=0.000135; // using fig.26
s=0.285;
phyt=1;
delPt=((f*(Gt^2)*(12)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.2f psi \n",delPt);
P=Pl+delPt;
printf("\t total resisitance : %.2f psi \n",P);
F=(12*0.43*62.5/144);
printf("\t driving force : %.2f psi \n",F);
// Since the driving force is slightly greater than the resistances, a recirculation ratio better than 4:1 is assured.
printf("\t hot fluid : shell side,steam \n");
ho=1500; // condensing steam
printf("\t cold fluid:inner tube side, butane \n");
jH=330; // from fig.24
Z=0.115; // Z=k*((c)*(mu1)/k)^(1/3), fig 16
Hi=((jH)*(1/D)*(Z)); //, Hi=(hi/phyt)using eq.6.15d,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hi);
Hio=((300)*(0.62/0.75)); //Hio=(hio/phyp), using eq.6.9
printf("\t Correct Hio to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hio);
Uc=((Hio)*(ho)/(Hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
UD=89;
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
// end
