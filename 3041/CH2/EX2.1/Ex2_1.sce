//Variable declaration
Rb=200                  //base resistance(ohm)
Vbe=0.7                 //base emitter voltage drop(V) in active region          
Vbb=5                   //base voltage of bipolar transistor(V) 
beeta=100               //current gain
Rc=3                    //collector resistance(k ohms)
Vcc=10                  //voltage given to the collector(V)

//Calculations
Ib=(Vbb-Vbe)/Rb           //base current(mA)  
Ic=beeta*Ib               //collector current(mA) 
Vcb=-Vbe-(Rc*Ic)+Vcc      //collector base voltage drop(V)

//Results
printf ("Base current  Ib = %.4f mA",Ib)
printf ("Collector current Ic = %.2f mA",Ic)
printf ("Reverse bias collector junction Vcb =  %.2f V",Vcb)
