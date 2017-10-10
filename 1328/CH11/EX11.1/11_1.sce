printf("\t example 11.1 \n");
printf("\t approximate values are mentioned in the book \n");
T1=340; // inlet hot fluid,F
T2=240; // outlet hot fluid,F
t1=200; // inlet cold fluid,F
t2=230; // outlet cold fluid,F
W=29800; // lb/hr
w=103000; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for straw oil \n");
c=0.58; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for straw oil is : %.2e Btu/hr \n",Q);
printf("\t for naphtha \n");
c=0.56; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for naphtha is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
R=((T1-T2)/(t2-t1));
printf("\t R is : %.1f \n",R);
S=((t2-t1)/(T1-t1));
printf("\t S is : %.3f \n",S);
printf("\t FT is 0.885 \n"); // from fig 18
delt=(0.885*LMTD); // F
printf("\t delt is : %.1f F \n",delt);
X=((delt1)/(delt2));
printf("\t ratio of two local temperature difference is : %.3f \n",X);
L=16;
Fc=0.405; // from fig.17
Kc=0.23; // crude oil controlling
Tc=((T2)+((Fc)*(T1-T2))); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.1f F \n",Tc);
tc=((t1)+((Fc)*(t2-t1))); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
UD1=70; // assume, from table 8a
A1=((Q)/((UD1)*(delt)));
printf("\t A1 is : %.0f ft^2 \n",A1);
a1=0.1963; // ft^2/lin ft
N1=(A1/(16*a1));
printf("\t number of tubes are : %.0f \n",N1);
N2=124; // assuming two tube passes, from table 9
A2=(N2*L*a1); // ft^2
printf("\t total surface area is : %.1e ft^2 \n",A2);
UD=((Q)/((A2)*(delt)));
printf("\t correct design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
printf("\t hot fluid:shell side,straw oil \n");
ID=15.25; // in
C=0.25; // clearance
B=3.5; // minimum baffle spacing,from eq 11.4,in
PT=1;
as=((ID*C*B)/(144*PT)); // flow area,from eq 7.1,ft^2
printf("\t flow area is : %.4f ft^2 \n",as);
Gs=(W/as); // mass velocity,from eq 7.2,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=3.63; // at 280.5F,lb/(ft)*(hr), from fig.14
De=0.95/12; // from fig.28,ft
Res=((De)*(Gs)/mu1); // reynolds number
printf("\t reynolds number is : %.0e \n",Res);
jH=46; // from fig.28
Z=0.224; // Z=(K*(c*mu3/k)^(1/3)),Btu/(hr)(ft^2)(F/ft), at mu3=1.5cp and 35 API
Ho=((jH)*(1/De)*(Z)); // H0=(h0/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Ho);
phys=1;
ho=(Ho)*(phys); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,naphtha \n");
Nt=124;
n=2; // number of passes
L=16; //ft
at1=0.302; // flow area, in^2
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
mu2=1.31; // at 212F,lb/(ft)*(hr)
D=0.0517; // ft
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
jH=102; // from fig.24
Z=0.167; // Z=(K*(c*mu3/k)^(1/3)),Btu/(hr)(ft^2)(F/ft), at mu4=0.54cp and 48 API
Hi=((jH)*(1/D)*(Z)); //Hi=(hi/phyp),using eq.6.15a,Btu/(hr)*(ft^2)*(F)
printf("\t Hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hi);
ID=0.62; // ft
OD=0.75; //ft
Hio=((Hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct Hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hio);
phyt=1;
hio=(Hio)*(phyt); // from eq.6.37
printf("\t Correct hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
printf("\t pressure drop  for annulus \n");
f=0.00225; // friction factor for reynolds number 7000, using fig.29
s=0.76; // for reynolds number 7000,using fig.6
Ds=15.25/12; // ft
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(Gs^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t pressure drop  for inner pipe \n");
f=0.0002; // friction factor for reynolds number 31300, using fig.26
s=0.72;
delPt=((f*(Gt^2)*(L)*(n))/(5.22*(10^10)*(D)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t The first trial is disqualified because of failure to meet the required dirt factor \n");
printf("\t Proceeding as above and carrying the viscosity correction and pressure drops to completion the new summary is given using a 17.25in. ID shell with 166 tubes on two passes and a 3.5in. baffle space \n");
UD1=60; // assumption for 2 tube passes,3.5 baffle spacing and 17.25in ID
UC1=74.8;
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UC1);
UD2=54.2;
printf("\t correct design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD2);
Rd1=0.005; 
printf("\t actual Rd is : %.3f (hr)*(ft^2)*(F)/Btu \n",Rd1);
delPs1=4.7;
printf("\t delPs is : %.1f psi \n",delPs1);
delPt1=2.1;
printf("\t delPt is : %.1f psi \n",delPt1);
//end
