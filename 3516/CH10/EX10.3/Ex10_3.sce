printf("\t example 10.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=250; // inlet hot fluid,F
T2=250; // outlet hot fluid,F
t1=105; // inlet cold fluid,F
t2=130; // outlet cold fluid,F
w=50000; // lb/hr
W=622; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for gas oil \n");
c=0.47; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for gas oil is : %.2e Btu/hr \n",Q);
printf("\t for steam \n");
l=945.5; // Btu/(lb)
Q=((W)*(l)); // Btu/hr
printf("\t total heat required for steam is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
tc=((t1)+(t2))/2; // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.1f F \n",tc);
printf("\t hot fluid:shell side,steam \n");
ID=15.25; // in
C=0.25; // clearance
B=15; // baffle spacing,in
PT=1.25;
as=((ID*C*B)/(144*PT)); // flow area,ft^2, eq 7.1
printf("\t flow area is : %.3f ft^2 \n",as);
Gs=(6220/as); // mass velocity,lb/(hr)*(ft^2), calculation mistake
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gs);
mu1=0.0314; // at 250F,lb/(ft)*(hr), from fig.15
De=0.060; // from fig.29,ft
Res=((De)*(Gs)/mu1); // reynolds number, calculation mistake
printf("\t reynolds number is : %.2e \n",Res);
ho=1500; //Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner tube side,crude oil \n");
d1=0.5; // in
d2=0.87; // in
at1=((3.14*(d2^2-d1^2))/4);
printf("\t at1 is : %.1f in^2 \n",at1);
Nt=86;
n=2; // number of passes
L=12; //ft
at=((Nt*at1)/(144*n)); // total area,ft^2,from eq.7.48
printf("\t flow area is : %.3f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gt);
De=(d2^2-d1^2)/(12*d2);
printf("\t De is : %.4f ft \n",De);
mu2=16.7; // at 117F,lb/(ft)*(hr)
Ret=((De)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Ret);
jH=3.1; // from fig.24
Z=0.35; // Z=(K*(c*mu3/k)^(1/3)),Btu/(hr)(ft^2)(F/ft), at mu3=6.9cp and 28 API
Hi=((jH)*(1/De)*(Z)); //Hi=(hi/phyp),using eq.6.15a,Btu/(hr)*(ft^2)*(F)
printf("\t Hi is : %.1f Btu/(hr)*(ft^2)*(F) \n",Hi);
ID=0.87; // ft
OD=1; //ft
Hio=((Hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct Hi0 to the surface at the OD is : %.1f Btu/(hr)*(ft^2)*(F) \n",Hio);
muw=4.84; // lb/(ft)*(hr), from fig.14
phyt=(mu2/muw)^0.14;
printf("\t phyt is : %.2f \n",phyt); // from fig.24
hio=(Hio)*(phyt); // from eq.6.37
printf("\t Correct hi0 to the surface at the OD is : %.1f Btu/(hr)*(ft^2)*(F) \n",hio);
tw=(tc)+(((ho)/(hio+ho))*(T1-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
A=270; // ft^2
printf("\t total surface area is : %.0f ft^2 \n",A);
UD=((Q)/((A)*(LMTD)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.3f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
f=0.0016; // friction factor for reynolds number 25300, using fig.29
s=0.00116; // for reynolds number 25300,using fig.6
Ds=15.25/12; // ft
phys=1;
N=(12*L/B); // number of crosses,using eq.7.43
printf("\t number of crosses are : %.0f \n",N);
delPs=((f*(19600^2)*(Ds)*(N))/(5.22*(10^10)*(De)*(s)*(phys)))/(2); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t pressure drop  for inner pipe \n");
dt=(d2-d1)/(12); // ft
printf("\t dt is : %.4f ft \n",dt);
Ret2=(dt*Gt/mu2);
printf("\t Ret2 is : %.0f \n",Ret2);
f=0.00066; // friction factor for reynolds number 8220, using fig.26
phyt=1.35; // fig 6
printf("\t phyt is : %.2f \n",phyt);
s=0.85;
delPt=((f*(420000^2)*(L)*(n))/(5.22*(10^10)*(0.0309)*(s)*(phyt))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
printf("\t delPr is negligible \n");
//end
