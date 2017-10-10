clear//

//Variables

hie = 1500.0                                //hie (in ohm)
hfe = 50.0                                  //hfe
hre = 50.0 * 10**-4                         //hre
hoe = 20.0 * 10**-6                         //hoe
R1 = 20.0 * 10**3                           //Resistance (in ohm)
R2 = 10.0 * 10**3                           //Resistance (in ohm)
RC = 5.0 * 10**3                            //Collector resistance (in ohm)  
RE = 1.0 * 10**3                            //Emitter resistance (in ohm)
RL = 10.0 * 10**3                           //Load resistance (in ohm)  
RS = 0                                      //Source resistance (in ohm)

//Calculation

Ai = -hfe
rL = RC * RL /(RC + RL)                     //a.c. load resistance (in ohm)
Ri = hie                                    //Input resistance (in ohm)
Ris = (R1*R2*Ri)/(Ri*R1 + Ri*R2 + R1*R2)    //Input resistance of the amplified stage (in ohm)
Ro = 1 / hoe                                //Output resistance (in ohm)
Ros = Ro * rL /(Ro + rL)                    //Output resistance of the stage (in ohm)
Av = Ai * rL / Ri                           //Voltage gain
Avs = Av * Ris / (RS + Ris)                 //Voltage gain of the stage 
Ais = Ai                                    //Current gain of the stage

//Result

printf("\n Input resistance of the stage is  %0.2f  kilo-ohm.\nOutput resistance of the stage is  %0.1f  kilo-ohm.\nVoltage gain of the stage is  %0.0f  .\nCurrent gain of the stage is  %0.3f  .",Ris*10**-3,Ros*10**-3,Avs,Ai)
