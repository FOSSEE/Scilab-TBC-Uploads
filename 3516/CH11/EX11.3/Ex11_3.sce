printf("\t example 11.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=190; // inlet hot fluid,F
T2=120; // outlet hot fluid,F
t1=80; // inlet cold fluid,F
t2=120; // outlet cold fluid,F
W=100000; // lb/hr
w=154000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for caustic \n");
c=0.88; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for caustic is : %.2e Btu/hr \n",Q);
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
printf("\t FT is 0.815 \n"); // for 4-8 exchanger,from fig 21
delt=(0.815*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
Tc=((T2)+(T1))/(2); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+(t2))/(2); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f \n",tc);
UD1=250; // assume, from table 8
A1=((Q)/((UD1)*(delt)));
printf("\t A1 is : %.0f ft^2 \n",A1);
a1=0.2618; // ft^2/lin ft
L=16;
N1=(A1/(16*a1));
printf("\t number of tubes are : %.0f \n",N1);
N2=140; // assuming four tube passes,19.25in ID, from table 9
A2=(N2*L*a1); // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A2);
UD=((Q)/((A2)*(delt)));
printf("\t correct design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
printf("\t hot fluid:shell side,caustic \n");
ID=19.25; // in
C=0.25; // clearance
B=7; // minimum baffle spacing,from eq 11.4,in
PT=1.25;
as=((ID*C*B)/(144*PT)); // flow area,from eq 7.1,ft^2
printf("\t flow area is : %.4f ft^2 \n",as);
Gs=(W/as); // mass velocity,from eq 7.2,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=1.84; // at 155F,lb/(ft)*(hr), from fig.14
De=0.72/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Res);
jH=75; // from fig.28
Z=0.575; // Z=(K*(c*mu3/k)^(1/3)),Btu/(hr)(ft^2)(F/ft)
Ho=((jH)*(1/De)*(Z)); // H0=(h0/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Ho);
phys=1; // low viscosity
ho=(Ho)*(phys); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,water \n");
Nt=140;
n=4; // number of passes
L=16; //ft
at1=0.546; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=Gt/(3600*62.5);
printf("\t V is %.2f fps \n",V);
mu2=1.74; // at 100F,lb/(ft)*(hr)
D=0.0695; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
hi=1240*0.94; // from fig 25
printf("\t Hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=0.834; // ft
OD=1; //ft
hio=((hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
printf("\t pressure drop  for annulus \n");
f=0.0019; // friction factor for reynolds number 17400, using fig.29
s=1.115; // for reynolds number 17400,using fig.6
Ds=19.25/12; // ft
De=0.06;
N=(12*L/B)+1; // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.0f psi \n",delPs);
printf("\t allowable delPa is 10 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.00018; // friction factor for reynolds number 46300, using fig.26
s=1;
phyt=1;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
X1=0.18; // X1=((V^2)/(2*g)), for Gt 1060000,using fig.27
delPr=((4*n*X1)/(s)); // using eq.7.46,psi
printf("\t delPr is : %.1f psi \n",delPr);
delPT=delPt+delPr; // using eq.7.47,psi
printf("\t delPT is : %.1f psi \n",delPT);
printf("\t allowable delPa is 10 psi \n");
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t Adjustment of the baffie space to use the full 10 psi will still not permit the exchanger to make the 0.002 dirt factor. The value of UD has been assumed too high \n");
printf("\t Try a 21.25in.ID shell with four tube passes and a 6in.baffie·space.This corresponds to 170 tubes \n");
UC1=390;
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UC1);
UD2=200;
printf("\t correct design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD2);
Rd1=0.0024; 
printf("\t calculated Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd1);
Rd2=0.002; 
printf("\t actual Rd is : %.3f (hr)*(ft^2)*(F)/Btu \n",Rd2);
delPs1=9.8;
printf("\t delPs is : %.1f psi \n",delPs1);
delPT1=4.9;
printf("\t delPt is : %.1f psi \n",delPT1);
//end
