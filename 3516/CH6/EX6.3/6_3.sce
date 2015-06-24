printf("\t example 6.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=450; // inlet hot fluid,F
T2=350; // outlet hot fluid,F
t1=300; // inlet cold fluid,F
t2=310; // outlet cold fluid,F
W=6900; // lb/hr
w=72500; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for lube oil \n");
c=0.62; // Btu/(lb)*(F)
Q=((W)*(c)*(T1-T2)); // Btu/hr
printf("\t total heat required for lube oil is : %.2e Btu/hr \n",Q);
printf("\t for crude oil \n");
c=0.585; // Btu/(lb)*(F)
Q1=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for crude oil is : %.2e Btu/hr \n",Q1); // calculation mistake in book
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
A=((delt1)/(delt2));
printf("\t ratio of two local temperature difference is : %.3f \n",A);
Fc=0.395; // from fig.17
Tc=((T2)+((Fc)*(T1-T2))); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.1f F \n",Tc);
tc=((t1)+((Fc)*(t2-t1))); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:annulus,lube oil \n");
D1=0.199; // ft
D2=0.256; // ft
aa=((%pi)*(D2^2-D1^2)/4); // flow area,ft^2
printf("\t flow area is : %.4f ft^2 \n",aa);
De=(D2^2-D1^2)/D1; // equiv diameter,ft
printf("\t equiv diameter is : %.2f ft \n",De);
Ga=(W/aa); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Ga);
mu1=3*2.42; // at 389.5F,lb/(ft)*(hr), from fig.14
Rea=((De)*(Ga)/mu1); // reynolds number
printf("\t reynolds number is : %.0e \n",Rea);
jH=20.5; // from fig.24
c=0.615; // Btu/(lb)*(F),at 130F
k=0.067; // Btu/(hr)*(ft^2)*(F/ft), from table 4
Pr=((c)*(mu1)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
Ho=((jH)*(k/De)*(Pr)); // H0=(h0/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Ho);
printf("\t cold fluid:inner pipe,crude oil \n");
D=0.172; // ft
ap=((%pi)*(D^2)/4); // flow area, ft^2
printf("\t flow area is : %.4f ft^2 \n",ap);
Gp=(w/(2*ap)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gp);
mu2=0.83*2.42; // at 304 F,lb/(ft)*(hr)
Rep=((D)*(Gp)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Rep);
jH=320; // from fig.24
c=0.585; // Btu/(lb)*(F),at 304F,from fig.4
k=0.073; // Btu/(hr)*(ft^2)*(F/ft), from fig.1
Pr=((c)*(mu2)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
Hi=((jH)*(k/D)*(Pr)*(1^0.14)); //Hi=(hi/phyp),using eq.6.15a,Btu/(hr)*(ft^2)*(F)
printf("\t Hi is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hi);
ID=2.067; // ft
OD=2.38; //ft
Hio=((Hi)*(ID/OD)); //Hio=(hio/phyp), using eq.6.5
printf("\t Correct Hi0 to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",Hio);
muw=0.77*2.42; // lb/(ft)*(hr), from fig.14
phyp=(mu2/muw)^0.14;
printf("\t phyp is : %.0f \n",phyp); // from fig.24
hio=(Hio)*(1); // from eq.6.37
printf("\t Correct hio to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
tw=(tc)+(((Ho)/(Hio+Ho))*(Tc-tc)); // from eq.5.31
printf("\t tw is : %.0f F \n",tw);
muw=6.6*2.42; // lb/(ft)*(hr), from fig.14
phya=(mu1/muw)^0.14;
printf("\t phya is : %.1f \n",phya); // from fig.24
ho=(Ho)*(phya); // from eq.6.36
printf("\t Correct h0 to the surface at the OD is : %.1f Btu/(hr)*(ft^2)*(F) \n",ho);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=0.006; // required by problem,(hr)*(ft^2)*(F)/Btu
UD=((Uc)/((1)+(Uc*Rd))); // design overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
A=((Q)/((UD)*(LMTD))); // required surface,ft^2
printf("\t required surface is : %.0f ft^2 \n",A);
A1=0.622; // From Table 11,ft^2
Lr=(A/A1); // required length;lin ft
printf("\t required length is : %.0f lin ft \n",Lr);
printf("\t Since two parallel streams are employed, use eight 20 ft hairpins or 320 lin. feet \n");
L=320;
A2=320*0.622; // actual surface supplied,ft^2
printf("\t actual surface supplied is : %.1f ft^2 \n",A2);
UD=((Q)/((A2)*(LMTD)));
printf("\t actual design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
De1=.058; //ft
printf("\t De1 is : %.3f ft \n",De1);
Rea1=((De1)*(Ga)/7.25); // reynolds number
printf("\t reynolds number is : %.2e \n",Rea1);
f=(0.0035)+((0.264)/(2680^0.42)); // friction factor, using eq.3.47b
printf("\t friction factor is : %.4f \n",f);
s=0.775;
row=62.5*0.775; // from fig 6
delFa=((4*f*(Ga^2)*L)/(2*4.18*(10^8)*(row^2)*(De1))); // ft
printf("\t delFa is : %.1f ft \n",delFa);
V=((Ga)/(3600*row)); //fps
printf("\t V is : %.1f fps \n",V);
delFl=((8*(V^2))/(2*32.2)); //ft
printf("\t delFl is : %.2f ft \n",delFl);
delPa=((delFa+delFl)*(row)/144); // psi
printf("\t delPa is : %.1f psi \n",delPa);
printf("\t allowable delPa is 10 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=(0.0035)+((0.264)/(Rep^0.42)); // friction factor, using eq.3.47b
printf("\t friction factor is : %.5f \n",f);
s=0.76;
row=62.5*0.76; // from table 6
Lp=160;
delFp=((4*f*(Gp^2)*Lp)/(2*4.18*(10^8)*(row^2)*(D))); // ft
printf("\t delFp is : %.1f ft \n",delFp);
delPp=((delFp)*(row)/144); // psi
printf("\t delPp is : %.1f psi \n",delPp);
printf("\t allowable delPp is 10 psi \n");
// end
