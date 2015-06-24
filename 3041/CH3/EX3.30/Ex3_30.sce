//Variable declaration
Rl=20              //load resistance(ohms)
Vcc=30             //supply voltage(V)
beeta=150          //current gain 
Re=2200            //emitter resistance(ohms)  
Rb=350             //base resistance(k ohms) 
Vbe=0.7            //base to emitter voltage(V)
Is=10**-3          //source current(A) 
r1=2000            //resistance(ohms)

//Calculations
Ib=(Vcc-Vbe)/(Rb+(1+beeta)*Re)//base current(uA)
Ic=beeta*Ib                   //collector current(mA)
rpi=beeta*(25/Ic)             //dynamic resistance(ohms)   
R=(Re*Rl)/(Re+Rl)             //resistance(ohms)  
Ib1=17.95                     //round the base emitter(as Rb>>2 kohms,it it ignored)
Vl=(beeta+1)*Ib1*R            //load voltage(V)
Avl=Vl                              //Voltage gain
Il=Vl/Rl                            //load current(A)
Ail=Il/Is                           //current gain

//Results
printf ("overall voltage gain is %.2f",Avl/1E+3)
printf ("overall current gain is %.f",Ail/1E+3)
