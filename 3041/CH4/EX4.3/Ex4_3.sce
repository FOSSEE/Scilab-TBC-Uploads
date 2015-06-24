

//Variable declaration
rpi = 600               //dynamic junction resistance(ohms)
beta = 100              //common emitter current gain
Vs = 5.                 //source voltage(V)
Rs = 400                //source resistance(ohms)
R = 10                  //resistance(k ohms)

//Calculations
Ib = Vs/(Rs+rpi)       //base current(uA)  
Vo = R*beta*Ib        //output voltage(V)
Rin = rpi              //input resistance(ohms)
Rout = R               //output ewsistance(k ohms)

//Results
printf ("output voltage is %.1f V",Vo)
printf ("input resistance %.1f ohms",Rin)
printf ("output resistance %.1f k ohms",Rout)
