
Pout=30D+3//output
e=.86//efficiency
Pin=Pout/e//input
Vl=440//line voltage
pf=.83//power factor
Il=Pin/(sqrt(3)*Vl*pf)
mprintf("Line current=%f A\n", Il)
Iph=Il/sqrt(3)//motor is delta connected
mprintf("Phase current=%f A", Iph)
