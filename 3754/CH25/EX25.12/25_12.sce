clear//

//Variables

hie = 1100.0                          //hie (in ohm)
hre = 2.5 * 10**-4                    //hre
hfe = 50.0                            //Current gain
hoe = 24.0 * 10**-6                   //hoe (in Ampere per volt)
rL=10.0*10**3;RL=10.0*10**3;
RS = 1.0 * 10**3                      //Source resistance (in ohm)

//Calculation

hic = hie                             //hic (in ohm)
hrc = (1 - hre)                       //hrc
hfc = -(1 + hfe)                      //hfc
Ai = -(hfc/(1 + hoe * rL))            //Current gain
Ri = hic + hrc * Ai * rL              //Input resistance (in ohm)
Av = Ai * rL / Ri                     //Voltage gain

//Result

printf("\n Current gain is  %0.1f .\nInput resistance is  %0.1f  kilo-ohm.\nVoltage gain is  %0.3f .",Ai,Ri*10**-3,Av)
