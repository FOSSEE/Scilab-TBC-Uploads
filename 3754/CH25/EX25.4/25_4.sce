clear//

//Variables

RC = 4.0 * 10**3              //Collector resistance (in ohm)
RB = 40.0 * 10**3             //Base resistance (in ohm)
RS = 10.0 * 10**3             //Source resistance (in ohm)
hie = 1100.0                  //hie (in ohm)
hfe = 50.0                    //hfe
hre=0;hoe=0;dh=0;

//Calculation

RB2 = RB                      //Resistance (in kilo-ohm) 
rL = RC * RB2 /(RC +RB2)      //a.c. load resistance (in ohm)
Ai = -hfe                     //Current gain
Ri = hie                      //Input resistance of the amplifier looking into the base (in ohm) 
Av = Ai * rL / Ri             //Voltage gain
RB1 = RB/(1 - Av)             //Resistance (in ohm)
Ris = Ri * RB1 / (Ri + RB1)   //Input resistance  looking from source terminals (in ohm)
Ro = "infinite"               //Output resistance (in ohm)
Ros = rL                      //Output resistance of the stage (in ohm)
Avs = Av * Ris / (RS + Ris)   //Voltage gain of the stage 

//Result

printf("\n Voltage gain is  %0.1f .\nInput resistance is  %0.0f  ohm.\nOutput resistance is  %0.0f  ohm.",Avs,Ris,Ros)
