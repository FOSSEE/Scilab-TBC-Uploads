//calculate the useful gain,exit fluid temperature and collection efficiency
//Optical properties are estimated as
p=0.85;
//(T. alpha)=0.77;let A=(T. alpha)
A=0.77
gama=0.94;
Do=0.06;
L=8;//unit=meter,//L=length of concentrator
W=2;//W=width of concentrator in meter
dco=0.09;//dco=diameter of transpaarent cover
Ar= %pi*Do*L;//Ar=area of the receiver pipe
A_alpha=(W-dco)*L;//aperture area of the concentration
Cp=0.30;//unit=kcal/kg degree calcius
m=400;//unit=kg/hr,m=flow rate
HbRb=600;//unit=kcal/hr m^2
Tfi=150;//degree calcius
T_alpha=25;//degree calcius
//Heat transfer coefficient from fluid inside to surroundings,
Uo=5.2;//unit=kcal/hr-m^2
//Heat transfer coefficient from absorber cover surface to surroundings,
UL=6;//unit=kcal/hr-m^2
F=(Uo/UL);
//Heat removed factor FR is
//FR=((m*Cp)/(Ar*UL))*(1-(%e^-((Ar*UL*F)/(m*Cp))))
//let X=(m*Cp)/(Ar*UL);Y=(%e^-((Ar*UL*F)/(m*Cp)))
X=(m*Cp)/(1.51*UL*0.86);
Y=%e^(-1/X);
FR=X*0.86*(1-Y);
//Absorbed solar energy is
S=HbRb*p*gama*A;
printf(" Area of the receiver pipe Ar= %f=1.51 m^2 \n A_aplha= %f m^2=collection efficiency factor ",Ar,A_alpha);
printf("\n value of F= %f",F);
printf("\n Heat removed factor FR=%f \n Absorbed solar energy is \n S=%f kcal/Hr m^2 .....(MKS) ",FR,S);
//for unit in S.I.   , 1 kcal/Hr m^2 = 1.16298 W/m^2
s= S*1.16298; //in W/m^2
printf("\n S=%f W/m^2.....(SI)",s);
//the values of F,FR will be same in any unit,since they are factors(dimensionless)
//Useful Gain=Qu=A_alpha*FR*(S-((Ar*UL)/A_alpha)*(Tfi-T_alpha))
//In MKS unit
Qu=A_alpha*FR*(S-((1.51*UL)/A_alpha)*(Tfi-T_alpha))
printf("\n useful gain in (MKS) Qu=%f kcal/hr",Qu);
//IN SI unit
qu=A_alpha*FR*(s-((1.51*6.98)/A_alpha)*(Tfi-T_alpha))//UL=6.98 W/m^2 degree celcius
printf("\n useful gain in (SI) Qu=%f Watt",qu);
//the exit fluid temperature can be obtained from
tci=150;//degree celcius
tco=tci+(Qu/(m*Cp));//from Qu=mCp(tco-tc);  where, tco=collector fluid temp. at outlet,tci=Fluid inlet temp.
n=(Qu/(16*HbRb))*100;//ncollector=Qu/(A_alpha*HbRb)*100;
printf("\n collector fluid temp. at outlet  tco=%f degree celcius \n ncollector = %f percent ",tco,n);

//The values/results/answers is approximate in the text book to the real calculated value
