//Ex7.15.1; calculate volume of biogas digester and power available from the digester
//Mass of the dry input
M0=2*5;//M0=2.5 kg/day * 5
pm=50;//unit=kg/m^3
tr=20;//retention time in days
C=0.24;//unit=m^3 per kg;Biogas yeild.
n=0.6;//efficiency of burner
Hm=28;//unit=MJ/m^3//combustion of methane
Fm=0.8;//methane proportional
//Fluid volume Vf is =M0/pm
Vf=M0/pm;
printf(" Mass of the dry input M0=%f kg/day \n Fluid volume Vf=%f m^3 /day",M0,Vf);
//for expression Vd=Vftr,the digester volume is
Vd=Vf*tr;
printf("\n Vd=%f m^3",Vd);
//volume of biogas is Vb=C*M0= biogas yield input * mass of dry input
Vb=C*M0;
printf("\n volume of biogas is Vb=%f m^3 /day",Vb);
//The Power available from the digester is
E=n*Hm*Fm*Vb;
printf("\n The Power available from the digester=%f Mj/day",E);
E=E*0.2728;//unit=kWh/day
printf("=%f kWh/day",E);
E=E*41.8//unit=W(continuous thermal)
printf("=%f W(continuous thermal)",E);
