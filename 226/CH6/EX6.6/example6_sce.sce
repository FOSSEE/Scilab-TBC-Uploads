//chapter 6
//example 6.6
//page 258
printf("\n")
printf("given")
hie=2.1*10^3;hfe=75;hoe=1*10^-6;R1=68*10^3;R2=56*10^3;Rc=3.9*10^3;Rl=82*10^3;
disp(" input impedance Zi=R1||R2||hie")
Zi=((R1*R2*hie)/(R1+R2+hie))*10^-3;
printf(" input impedance is %3.2fKohm\n",Zi)
disp("output impedance is Zo=Rc||(1/hoe)")
Zo=((Rc*(1/hoe))/(Rc+(1/hoe)))*10^-3;
printf(" output impadance is %f3.2fKohm\n",Zo)
Av=-(hfe*((Rc*Rl)/(Rc+Rl)))/hie;
printf(" voltage gain is %d\n",Av)