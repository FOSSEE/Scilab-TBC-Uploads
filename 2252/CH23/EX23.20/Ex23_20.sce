
V=400//phase voltage applied to motor
//when started directly on line
Iph=25//phase current
Il=sqrt(3)*Iph
mprintf("Line current drawn by the motor when started directly on line=%f A\n",Il)
//when started with auto-transformer starter with a tapping percent of 60 percent
Vl=.6*V//line voltage
Vph=Vl//phase voltage
Iph=25//phase current
Ist=Iph*Vph/V
Il=sqrt(3)*Ist
mprintf("When started with auto-transformer starter with a tapping of 60 percent\nPhase starting current =%f A\nLine starting current=%f A\n",Ist,Il)
//when started with star-delta starter
Vph=V/sqrt(3)//phase voltage
I=Iph*Vph/V
Il=I
mprintf("When started with star-delta starter\nPhase starting current =%f A\nLine starting current=%f A",I,Il) 
