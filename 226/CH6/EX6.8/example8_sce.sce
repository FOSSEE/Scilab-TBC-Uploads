//chapter 6
//example 6.8
//page 262
printf("\n")
printf("given")
hie=2.1*10^3;hfe=75;hoe=1*10^-6;Re=4.7*10^3;R1=68*10^3;R2=56*10^3;Rc=3.9*10^3;Rl=82*10^3;
Zb=hie+Re*(1+hfe)
disp(" input impedance is Zi=R1||R2||Zb")
Zi=((R1*R2*Zb)/(R1+R2+Zb));
printf(" input circuit resistance is %3.3fKohm\n",Zi)
Zo=Rc

Av=-hfe*((Rc*Rl)/(Rc+Rl))/(hie+Re*(1+hfe));
printf("voltage gain is %3.3f\n",Av)