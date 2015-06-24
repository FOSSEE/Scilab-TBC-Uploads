printf("\t example 16.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=250; // inlet hot fluid,F
T2=200; // outlet hot fluid,F
t1=80; // inlet cold fluid,F
t2=120; // outlet cold fluid,F
W=18000; // lb/hr
w=11950; // lb/hr
printf("\t 1.for heat balance \n")
C=0.53; // Btu/(lb)*(F)
Q=((W)*(C)*(T1-T2)); // Btu/hr
printf("\t total heat required for gas oil is : %.2e Btu/hr \n",Q);
c=1; // Btu/(lb)*(F)
Q=((w)*(c)*(t2-t1)); // Btu/hr
printf("\t total heat required for water is : %.2e Btu/hr \n",Q);
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
X=((delt1)/(delt2));
printf("\t ratio of two local temperature difference is : %.2f \n",X);
Fc=0.47; // from fig.17
Kc=0.27; 
Tc=((T2)+((Fc)*(T1-T2))); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.0f F \n",Tc);
tc=((t1)+((Fc)*(t2-t1))); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
printf("\t hot fluid:shell side,gas oil \n");
ID=3.068; // in, table 11
OD=1.9; // in, table 11
af=0.0175; // fin cross section,table 10
aa=((3.14*ID^2/(4))-(3.14*OD^2/(4))-(24*af))/(144);
printf("\t flow area is : %.4f ft^2 \n",aa);
p=(3.14*(OD))-(24*0.035)+(24*0.5*2);
printf("\t wetted perimeter : %.2f in \n",p);
De=(4*aa*12/(p));
printf("\t De : %.4f ft \n",De);
Ga=(W/aa); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Ga);
mu1=2.5*2.42; // at 224F,lb/(ft)*(hr), from fig.14
Rea=((De)*(Ga)/mu1); // reynolds number
printf("\t reynolds number is : %.2e \n",Rea);
jf=18.4; // from fig.16.10
Z=0.25; // Z=k*((c)*(mu1)/k)^(1/3), fig 16
Hf=((jf)*(1/De)*(Z)); // Hf=(hf/phya),using eq.6.15,Btu/(hr)*(ft^2)*(F)
printf("\t individual heat transfer coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Hf);
printf("\t cold fluid:inner tube side,water \n");
D=0.134; // ft
row=62.5;
at=(3.14*D^2/(4));
printf("\t flow area is : %.4f ft^2 \n",at);
Gt=(w/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.2e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*row));
printf("\t V is : %.2f fps \n",V);
mu2=0.72*2.42; // at 99F,lb/(ft)*(hr)
Ret=((D)*(Gt)/mu2); // reynolds number
printf("\t reynolds number is : %.1e \n",Ret);
hi=(970*0.82); // fig 25
printf("\t hi : %.0f Btu/(hr)*(ft^2)*(F) \n",hi);
printf("\t calculation of tfw \n");
// Tc-tfw=40F assumption from fig 14
tfw=184;
mufw=3.5; // cp, at 184F
phya=(2.5/mufw)^0.14;
printf("\t phya is : %.2f \n",phya); // from fig.24
hf=(Hf)*(phya); // from eq.6.36
printf("\t Correct hf to the surface at the OD is : %.1f Btu/(hr)*(ft^2)*(F) \n",hf);
Rdo=0.002;
Rf=(1/hf);
printf("\t Rf : %.4f \n",Rf);
hf1=(1/(Rdo+Rf)); // eq 16.37
printf("\t hf1 : %.1f \n",hf1);
hfi1=255; // fig 16.9
hfi2=(hf1*5.76); // eq 16.38 and fig 16.9,((Af+Ao)/(Ai))=5.76 from previous prblm
printf("\t hfi2 : %.0f \n",hfi2);
Rmetal=(hfi2-hfi1)/(hfi2*hfi1); // eq 16.39
printf("\t Rmetal : %.5f \n",Rmetal);
phyt=1; // for cooling water
Rdi=0.003;
Ri=(1/hi);
printf("\t Ri : %.5f \n",Ri);
hi1=(1/(Rdi+Ri)); // eq 16.40
printf("\t hi1 : %.1f \n",hi1);
UDi=(hi1*hfi1)/(hi1+hfi1); // eq 16.41
printf("\t UDi : %.0f \n",UDi);
// To obtain the true flux the heat load must be divided by the actual heat-transfer surface.For a 1}2-in. IPS pipe there are 0.422 ft2/lin foot, from table 11
// trial
Ai=(Q/(UDi*LMTD)); // LMTD=delt
printf("\t Ai : %.1f ft^2 \n",Ai);
L=(Ai/0.422);
printf("\t length of pipe required : %.1f lin ft \n",L);
// Use two 20-ft hairpins = 80 lin ft
Ai1=(80*0.422); // ft^2
r=(Q/Ai1);
printf("\t Q/Ai1 : %.2e Btu/(hr)*(ft^2) \n",r);
deltf=(r/hfi2);
deltdo=(r*Rdo/5.76);
printf("\t annulus film : %.1f \n",deltf);
printf("\t annulus dirt : %.1f \n",deltdo);
d=deltf+deltdo; // d=Tc-tfw
deltmetal=(r*Rmetal);
deltdi=(r*Rdi);
delti=(r/hi);
printf("\t Tc-tfw : %.1f \n",d);
printf("\t fin and tube metal : %.1f \n",deltmetal);
printf("\t tube side dirt : %.1f \n",deltdi);
printf("\t tubeside film : %.1f \n",delti);
Td=deltf+deltdo+deltmetal+deltdi+delti;
printf("\t total temperature drop : %.1f F \n",Td);
printf("\t pressure drop  for annulus \n");
De1=0.0359; // ft
Rea1=(De1*Ga/mu1);
printf("\t reynolds number : %.2e \n",Rea1);
f=0.00036; // fig 16.10
s=0.82; //using fig.6
delPs=((f*(Ga^2)*(80))/(5.22*(10^10)*(De1)*(s)*(phya))); // using eq.7.44,psi
printf("\t delPs is : %.1f psi \n",delPs);
printf("\t allowable delPa is 10 psi \n");
printf("\t pressure drop  for inner pipe \n");
f=0.000192; // friction factor for reynolds number 65000, using fig.26
s=1;
delPt=((f*(Gt^2)*(80))/(5.22*(10^10)*(0.134)*(s)*(1))); // using eq.7.45,psi
printf("\t delPt is : %.1f psi \n",delPt);
printf("\t allowable delPa is 10 psi \n");
//end
