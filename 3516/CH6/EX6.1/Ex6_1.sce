printf("\t example 6.1 \n");
printf("\t approximate values are mentioned in the book \n");
T1=160; // inlet hot fluid,F
T2=100; // outlet hot fluid,F
t1=80; // inlet cold fluid,F
t2=120; // outlet cold fluid,F
w=9820; // lb/hr
printf("\t 1.for heat balance \n");
printf("\t for benzene \n");
tav=((t1+t2)/2); // F
printf("\t average temperature of benzene is : %.0f F \n",tav);
c=0.425; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for benzene is : %.2e Btu/hr \n",Q);
printf("\t for toulene \n");
Tav=((T1+T2)/2); //F
printf("\t average temperature of toulene is : %.0f F \n",Tav);
c=0.44; // Btu/(lb)*(F)
W=((Q)/((c)*(T1-T2))); // lb/hr
printf("\t W is :%.2e lb/hr \n",W);
printf("\t 2.LMTD \n");
printf("\t for counter current flow \n");
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD);
printf("\t 3.caloric temperatures \n");
printf("\t both streams will show that neither is viscous at the cold terminal (the viscosities less than 1 centipoise) and the temperature ranges and temperature difference are moderate. The coefficients may accordingly be evaluated from properties at the arithmetic mean, and the value of (mu/muw)^0.14 may be assumed equal to 1.0 \n");
tav=((t1+t2)/2); // F
printf("\t average temperature of benzene is : %.0f F \n",tav);
Tav=((T1+T2)/2); //F
printf("\t average temperature of toulene is : %.0f F \n",Tav);
printf("\t hot fluid:annulus,toulene \n");
D1=0.138; // ft
D2=0.1725; // ft
aa=((%pi)*(D2^2-D1^2)/4); // flow area,ft^2
printf("\t flow area is : %.5f ft^2 \n",aa);
De=(D2^2-D1^2)/D1; // equiv diameter,ft
printf("\t equiv diameter is : %.4f ft \n",De);
Ga=(W/aa); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Ga);
mu1=0.41*2.42; // at 130 F,lb/(ft)*(hr)
Rea=((De)*(Ga)/mu1); // reynolds number
printf("\t reynolds number is : %.1e \n",Rea);
jH=167; // from fig.24
c=0.44; // Btu/(lb)*(F),at 130F
k=0.085; // Btu/(hr)*(ft^2)*(F/ft), from table 4
Pr=((c)*(mu1)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
ho=((jH)*(k/De)*(Pr)*(1^0.14)); // using eq.6.15b,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t cold fluid:inner pipe,benzene \n");
D=0.115; // ft
ap=((%pi)*(D^2)/4); // flow area, ft^2
printf("\t flow area is : %.4f ft^2 \n",ap);
Gp=(w/ap); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gp);
mu2=0.5*2.42; // at 130 F,lb/(ft)*(hr)
Rep=((D)*(Gp)/mu2); // reynolds number
printf("\t reynolds number is : %.2e \n",Rep);
jH=236; // from fig.24
c=0.425; // Btu/(lb)*(F),at 130F
k=0.091; // Btu/(hr)*(ft^2)*(F/ft), from table 4
Pr=((c)*(mu2)/k)^(1/3); // prandelt number raised to power 1/3
printf("\t Pr is : %.3f \n",Pr);
hi=((jH)*(k/D)*(Pr)*(1^0.14)); // using eq.6.15a,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
ID=1.38; // ft
OD=1.66; //ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hi to the surface at the OD is : %.0f Btu/(hr)*(ft^2)*(F) \n",hio);
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=0.002; // required by problem,(hr)*(ft^2)*(F)/Btu
UD=((Uc)/((1)+(Uc*Rd))); // design overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
A=((Q)/((UD)*(LMTD))); // required surface,ft^2
printf("\t required surface is : %.1f ft^2 \n",A);
A1=0.435; // From Table 11 for 1(1/4)in IPS standard pipe there are 0.435 ft2 of external surface per foot length,ft^2
L=(A/A1); // required length;lin ft
printf("\t required length is : %.0f lin ft \n",L);
printf("\t This may be fulfilled by connecting three 20-ft hairpins in series \n");
A2=120*0.435; // actual surface supplied,ft^2
printf("\t actual surface supplied is : %.1f ft^2 \n",A2);
UD=((Q)/((A2)*(LMTD)));
printf("\t actual design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t pressure drop  for annulus \n");
De1=(D2-D1); //ft
printf("\t De1 is : %.4f ft \n",De1);
Rea1=((De1)*(Ga)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Rea1);
f=(0.0035)+((0.264)/(Rea1^0.42)); // friction factor, using eq.3.47b
printf("\t friction factor is : %.4f \n",f);
s=0.87;
row=62.5*0.87; // from table 6
delFa=((4*f*(Ga^2)*L)/(2*4.18*(10^8)*(row^2)*(De1))); // ft
printf("\t delFa is : %.1f ft \n",delFa);
V=((Ga)/(3600*row)); //fps
printf("\t V is : %.2f fps \n",V);
Fl=((3*(V^2))/(2*32.2)); //ft
printf("\t Fl is : %.1f ft \n",Fl);
delPa=((delFa+Fl)*(row)/144); // psi
printf("\t delPa is : %.1f psi \n",delPa);
printf("\t allowable delPa is 10 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=(0.0035)+((0.264)/(Rep^0.42)); // friction factor, using eq.3.47b
printf("\t friction factor is : %.4f \n",f);
s=0.88;
row=62.5*0.88; // from table 6
delFp=((4*f*(Gp^2)*L)/(2*4.18*(10^8)*(row^2)*(D))); // ft
printf("\t delFp is : %.1f ft \n",delFp);
delPp=((delFp)*(row)/144); // psi
printf("\t delPp is : %.1f psi \n",delPp);
printf("\t allowable delPp is 10 psi \n");
//end
