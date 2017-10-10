clear//

//Variables

hie = 1.0 * 10**3                      //hie (in ohm)
hre = 1.0 * 10**-4                     //hre
hoe = 100.0 * 10**-6                   //hoe (in mho)
RC = 1.0 * 10**3                       //Collector resistance (in ohm) 
RS = 1000.0                            //Source resistance (in ohm)
hfe=50.0;beta=50.0;

//Calculation

rL = RC                                //a.c. load resistance (in ohm)
Ai = -hfe /(1 + hoe * rL)              //Current gain of a transistor
Ri = hie + hre * Ai * rL               //Input resistance looking directly into the base (in ohm)
Ris = Ri                               //Iput resistance of the amplified stage (in ohm)
dh = hie * hoe - hre * hfe             //Change in h
Ro = (RS + hie)/(RS * hoe + dh)        //Output resistance looking directly into collector (in ohm)
Ros = Ro * rL /(Ro + rL)               //Output resistance of the amplified stage (in ohm)
Ais = Ai * RS / (RS + Ris)             //Current gain of amplified stage
Av = Ai * rL / Ri                      //Voltage gain of transistor     
Avs = Av * Ris / (RS + Ris)            //Voltage gain of amplified stage   

//Result

printf("\n Input resistance of the amplifier stage is  %0.0f  ohm.\nOutput resistance of amplifier stage is  %0.0f  ohm.\nCurrent gain of amplified stage is  %0.1f \nVoltage gain of amplifier stage is  %0.1f .",Ris,Ros,Ais,Avs)
