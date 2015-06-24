//chapter 6
//example 6.12
//page 277
printf("\n")
printf("given")
Rc=5.6*10^3;Rl=33*10^3;rs=600;
hfe=100;hie=1.5*10^3;vs=50*10^-3;
disp(" CE circuit operation with vs at transistor base and Re bypassed")
Av=(hfe*((Rc*Rl)/(Rc+Rl)))/hie
Zb=hie
Rb=(R1*R2)/(R1+R2);
Zi=(Rb*Zb)/(Rb+Zb)
vi=(vs*Zi)/(rs+Zi)
vo=Av*vi
disp("Cb circuit operation with vs at emitter and the base resistor bypassed")
Av=(hfe*((Rc*Rl)/(Rc+Rl)))/hie
Ze=hie/(1+hfe)
Zi=(Ze*Re)/(Ze+Re)
vi=(vs*Zi)/(rs+Zi)
vo=Av*vi