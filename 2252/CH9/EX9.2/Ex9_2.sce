
//calculating phase current
Vl=440//line voltage
Vph=Vl
Pout=200D+3//output
e=.91//efficiency
Pin=Pout/e//input
pf=.86//power factor
Iph=Pin/(3*Vph*pf)
mprintf("Current drawn by each motor phase=%f A\n", Iph)
//calculating line current
Il=sqrt(3)*Iph
mprintf("Line current=%f A\n", Il)
//calculating active and reactive components of phase current
phi=acos(pf)
Iact=Iph*pf
Ireact=Iph*sin(phi)
mprintf("Active component of phase current=%f A\nReactive component of phase current=%f A",Iact,Ireact)
