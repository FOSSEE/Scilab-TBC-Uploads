//Variable declaration
beeta=100.      //current gain  
Ic=4.           //collector current(mA)
Vbe=0.7         //base to emitter voltage(V)  
Re=2.           //emitter resistance(ohms)
Vcc=32.         //supply voltage(V)
abeeta=40.      //actual current gain

//Calculations
Ib=Ic/beeta                        //base current(mA)
Rb=(Vcc-Vbe-((Ib+Ic)*Re))/Ib       //as Vcc=(Ib*Rb)+Vbe+(Ib+Ic)*Re              
Ib=(Vcc-Vbe-8)/(Rb+Re)             //as Vcc=Rb*Ib+Vbe+(Ib+Ic)*Re
Ic1=abeeta*Ib                      //collector current(mA)
deltaIc=Ic-Ic1                     //change in collector current(mA)

//Result
printf ("change in Ic when beeta=40 is %.1f mA",deltaIc)
