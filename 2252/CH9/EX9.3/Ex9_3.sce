
Vl=400//line voltage across alternator and motor
Vph=Vl//as the motor is delta connected
Pout=112D+3//output of motor
e=.88//efficiency of motor
Pin=Pout/e//input to motor
pf=.86
phi=acos(pf)
Il=Pin/(sqrt(3)*Vl*pf)
Iph=Il/sqrt(3)
mprintf("Current in each motor phase, Iph=%f A\n", Iph)
//alternator is star connected
mprintf("Current in each alternator phase=%f A\n",Il)
//calculating active and reactive components of current in each phase of motor
Iact=Iph*pf
Ireact=Iph*sin(phi)
mprintf("Active component of current in each phase of motor=%f A\nReactive component of current in each phase of motor=%f A\n", Iact,Ireact)
//phase angle between the phase voltage and phase current will be the same for both motor and alternator if we neglect line impedance
Iph=Il
Iact=Iph*pf
Ireact=Iph*sin(phi)
mprintf("Active component of current in each phase of alternator=%f A\nReactive component of current in each phase of alternator=%f A\n", Iact,Ireact)
//The answers vary from the textbook due to round off error
