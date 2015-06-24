//chapter 8
//example 8.4
//page 317
printf("\n")
printf("given")
Ic=1*10^-3;hfe=50;hie=1.3*10^3;fT=250*10^6;Cbc=5*10^-12;Rc=8.2*10^3;Rl=100*10^3;
Ie=Ic;
Av=(hfe*((Rc*Rl)/(Rc+Rl)))/hie
Cbe=(6.1*Ie)/fT;
Cin=(Cbe+(1+Av)*Cbc)*10^9;
printf(" input capacitance when the circuit operated as CE is %3.3fnF\n",Cin)