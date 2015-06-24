//chapter 12
//example 12.19
//page 517
printf("\n")
printf("given")
f1=60;Ie=1.13*10^-3;hfe=60;Rb=3.9*10^3;Rl=70*10^3;Rc=6.8*10^3;
re=26*10^-3/Ie//use 20 as standard value
re=20;
hie=hfe*re
Zb=2*hie
Zi=(Rb*Zb)/(Rb+Zb)
C1=1/(2*3.14*f1*Zi)
C2=1/(2*3.14*f1*(Rl/10))
Av=(hfe*((Rc*Rl)/(Rc+Rl)))/(2*hie)