printf("\t example 12.5 \n");
printf("\t approximate values are mentioned in the book \n");
T1=130; // inlet hot fluid,F
T2=125; // outlet hot fluid,F
T3=100; // after subcooling
t1=80; // inlet cold fluid,F
t3=100; // outlet cold fluid,F
W=21000; // lb/hr
w=167000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for pentane \n");
c=0.57; // Btu/(lb)(F)
qs=((W)*(c)*(T2-T3)); // Btu/hr
printf("\t total heat required for subcooling of pentane is : %.0e Btu/hr \n",qs);
HT1=315; // enthalpy at T1, Btu/lb
HT2=170; // enthalpy at T2, Btu/lb
qc=(W*(HT1-HT2)); // for condensation
printf("\t total heat required for condensing of pentane is : %.2e Btu/hr \n",qc);
Q=qs+qc;
printf("\t total heat required for  pentane is : %.2e Btu/hr \n",Q);
printf("\t for water \n");
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t3-t1)); // Btu/hr
printf("\t total heat required for water is : %.2e Btu/hr \n",Q);
deltw=18.2;
printf("\t deltw is : %.1f F \n",deltw);
t2=t3-deltw;
printf("\t t2 is : %.1f F \n",t2)
printf("\t for condensing \n");
delt1=T2-t2; //F
delt2=T1-t3; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTDc=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTDc);
w1=(qc/LMTDc);
printf("\t w1 is : %.2e lb/hr \n",w1);
printf("\t subcooling \n");
delt3=T3-t1; //F
delt4=T2-t2; // F
printf("\t delt1 is : %.0f F \n",delt3);
printf("\t delt2 is : %.0f F \n",delt4);
LMTDs=((delt4-delt3)/((2.3)*(log10(delt4/delt3))));
printf("\t LMTD is :%.1f F \n",LMTDs);
w2=(qs/LMTDs);
printf("\t w1 is : %.2e lb/hr \n",w2);
delt=(Q/(w1+w2));
printf("\t delt is : % .1f F \n",delt);
Tc=((T1)+(T2))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.1f F \n",Tc);
tc=((t1)+(t3))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,pentane \n");
C1=0.198; // for 0.3Ds
Ds=25; // in
L=16; // ft
N=370
a=(C1*Ds^2);
printf("\t a is : %.0f in^2 \n",a);
N1=((N*a*4)/(3.14*Ds^2));
printf("\t number of submerged tubes are : %.0f \n",N1);
Nt=N-N1;
printf("\t number of tubes for condensation are : %.0f \n",Nt);
Af=(N1/N);
printf("\t flooded surface : %.2f \n",Af);
printf("\t for condensaton \n");
G1=(W/(L*Nt^(2/3))); // from eq.12.43
printf("\t G1 is : %.1f lb/(hr)*(lin ft) \n",G1);
printf("\t cold fluid:inner tube side,water \n");
n=4; // number of passes
L=16; //ft
at1=0.302; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5));
printf("\t V is : %.2f fps \n",V);
mu2=1.98; // lb/(ft)*(hr)
D=0.0517; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=940; //Btu/(hr)*(ft^2)*(F)
printf("\t hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.62; // ft
OD=0.75; //ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hio to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
ho=251; // Btu/(hr)*(ft^2)*(F), from fig 12.9
printf("\t Correct ho to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Ac=(qc/(Uc*LMTDc));
printf("\t clean surface required for dcondensation : %.0f ft^2 \n",Ac);
printf("\t subcooling \n");
ho=50; // Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
Us=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Us);
As=(qs/(Us*LMTDs));
printf("\t clean surface required for desuperheating : %.0f ft^2 \n",As);
AC=As+Ac;
printf("\t total clean surface : %.0f ft^2 \n",AC);
UC=((Us*As)+(Uc*Ac))/(AC);
printf("\t weighted clean overall coefficient : %.0f Btu/(hr)*(ft^2)*(F) \n",UC);
A=1160; // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(delt)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((UC-UD)/((UD)*(UC))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
printf("\t condensation \n");
printf("\t It will be necessary to spread the batHes to a spacing of 18in.to compensate for the reduction in crossfiow area due to the flooded subcooling zone. The tube-side pressure drop will be the same as before. Assume bundle flooded to 0.3Ds.\n");
As=0.547; // ft^2
Gs=(W/(As)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gs);
De=0.0792; // fig 28
Res=((De)*(Gs)/0.0165); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
f=0.00121; // friction factor for reynolds number 193000, using fig.29
s=0.00454; // for reynolds number 193000,using fig.6
Ds=2.08; // ft
B=18
phys=1;
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPsc=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys)))/(2); // using eq.12.47,psi
printf("\t delPsc is : %.1f psi \n",delPsc);
printf("\t delPss is negligible \n");
printf("\t allowable delPa is 2 psi \n");
//end
