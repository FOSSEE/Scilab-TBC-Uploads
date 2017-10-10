clear//

//Variables

hie = 1.1 * 10**3                      //hie (in ohm)
hre = 2.5 * 10**-4                     //hre
hoe = 25.0 * 10**-6                    //hoe (in mho)
RS = 1000.0                            //Source resistance (in ohm)
hfe=50.0;beta=50.0;
rL = 1000.0                            //ac.c load resistance (in ohm)

//Calculation

Ai = hfe /(1 + hoe * rL)               //Current gain of a transistor
Ri = hie + hre * Ai * rL               //Input impedance (in ohm)
Av = Ai * rL / Ri                      //Voltage gain                   

//Result

printf("\n Current gain is  %0.2f \nInput impedance is  %0.1f \nVoltage gain is  %0.2f ",Ai,Ri,Av)
