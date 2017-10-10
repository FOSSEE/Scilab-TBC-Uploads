clear//

//Variables

hie = 1.1 * 10**3                       //hie (in ohm)
hre = 2.5 * 10**-4                      //hre
hoe = 25.0 * 10**-6                     //hoe (in mho)
RS = 10000.0                            //Source resistance (in ohm)
hfe=50.0;beta=50.0;
rL = 1000.0                             //ac.c load resistance (in ohm)
RB = 200.0 * 10**3                      //Feedback resistor (in ohm)
RC = 5.0 * 10**3                        //Collector resistance (in ohm)

//Calculation

rL = RC * RB / (RC + RB)                //a.c. load resistance (in ohm) 
Ai = hfe /(1 + hoe * rL)                //Current gain
Ri = hie + hre * Ai * rL                //Input resistance of the amplifier looking into the base (in ohm) 
Av = Ai * rL / Ri                       //Voltage gain
RB1 = RB/(1 - (-17.4))                    //Resistance (in ohm)
Ris = Ri * RB1 / (Ri + RB1)             //Input resistance  looking from source terminals (in ohm)
Avs = Av * Ris / (RS + Ris)             //Voltage gain of the stage 

//Result

printf("\n Ai is  %0.2f \nAv is  %0.2f \nAvs is  %0.1f \nRi is  %0.3f  kilo-ohm.",Ai,Av,Avs,Ri*10**-3)
