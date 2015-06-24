// chapter14
// example14.13
// page 307

Vcc=20 // V
R3=10 // kilo ohm
R4=2.2 // kilo ohm
Rc=3.6 // kilo ohm

V_B=Vcc*R4/(R3+R4)

// replacing Cc by wire
Req=R3*Rc/(R3+Rc)
V_B2=Vcc*R4/(Req+R4)

printf("biasing potential before replacing Cc = %.3f V \n",V_B)
printf("biasing potential after replacing Cc = %.3f V \n \n",V_B2)
printf("thus biasing potential of second stage changes.\nThis could cause the transistor to saturate and it would not work as amplifier.\n")
printf("Also, we see the use of coupling capacitor to maintain \nindependent biasing potential for each stage.\nThis allows ac output from one stage to pass to next stage.\n")
