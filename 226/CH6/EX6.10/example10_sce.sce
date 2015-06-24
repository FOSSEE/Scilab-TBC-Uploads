//chapter 6
//example 6.10
//page 273
printf("\n")
printf("given")
hie=2.1*10^3;hfe=75;Re=4.7*10^3;Rc=3.9*10^3;Rl=82*10^3;
hib=hie/(1+hfe)
hfb=hfe/(1+hfe)
Zi=(hib*Re)/(Re+hib);
printf("input impedance is %3.2fohm\n",Zi)
Zo=Rc;
printf(" output impedance is %3.2fohm\n",Zo)
Av=(hfb*((Rc*Rl)/(Rc+Rl)))/hib;
printf(" voltage gain is %3.2f\n",Av)