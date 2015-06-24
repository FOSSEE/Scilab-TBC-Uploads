//Variable declaration
beeta1=120.                       //current gain
beeta2=160.                      //current gain
Vcc=18                           //supply voltage(V)
Rc=0.1                           //collector resistance(ohms)
Rb=2*10**3.                       //base resistance(ohms)
Vbe=0.7                          //base to emitter voltage(V)

//Calculations
Ib1=(Vcc-Vbe)/(Rb+(beeta1*beeta2*Rc))//base current(uA)
Ib2=beeta1*Ib1                      //base current(mA)
Ie1=(beeta1+1)*Ib1                  //emitter current(mA)
Ic=Ie1+(beeta2*Ib2)                 //collector current(mA)
Vo=Vcc-(Ic*Rc)                      //output voltage(V)
Vi=Vo-Vbe                           //input voltage(V)

//Results
printf ("dc biased current is %.1f mA",Ic)
printf ("output voltage %.2f V",Vo)
printf ("input voltage %.2f V",Vi)
