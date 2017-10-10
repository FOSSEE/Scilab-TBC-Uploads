clear//

//Variables

RB = 330.0 * 10**3                    //Base resistance (in ohm)
RC = 2.7 * 10**3                      //Collector resistance (in ohm)    
hfe = 120.0                           //current gain
hie = 1.175 * 10**3                   //hie (in ohm)
hoe = 20 * 10**-6                     //hoe (in Ampere per volt)

//Calculation

Ri = hie                              //Input resistance of transistor (in ohm)
Ris = hie * RB /(hie + RB)            //Input resistance of the circuit (in ohm)
Ro = 1 / hoe                          //Output resistance of transistor (in ohm)
Ros = Ro * RC / (Ro + RC)             //Output resistance of the circuit (in ohm)
Ai = hfe                              //Current gain of the circuit
Avs = Ai * RC / Ri                    //Overall voltage gain  

//Result

printf("\n Input resistance of the circuit is  %0.2f  kilo-ohm.\nOutput resistance of the circuit is  %0.2f  kilo-ohm.\nCurrent gain of the circuit is  %0.3f .\nVoltage gain of the circuit is  %0.1f .",Ris*10**-3,Ros*10**-3,Ai,Avs)
