clear//

//Variables

RC = 12.0 * 10**3                       //Collector resistance (in ohm)
RL = 4.7 * 10**3                        //Load resistance (in ohm) 
R1 = 33.0 * 10**3                       //Resistance (in ohm)
R2 = 4.7 * 10**3                        //Resistance (in ohm)
IC = 1.0 * 10**-3                       //Collector current (in Ampere)
hiemin = 1.0 * 10**3                    //hie minimum (in ohm)
hiemax = 5.0 * 10**3                    //hie maximum (in ohm)
hfemin = 70.0                           //Current gain minimum
hfemax = 350.0                          //Current gain maximum

//Calculation

hie = (hiemin * hiemax)**0.5            //hie (in ohm)
hfe = (hfemin * hfemax)**0.5            //current gain 
Ri = hie                                //input resistance (in ohm)
Ris = (R1*R2*Ri)/(Ri*R1+Ri*R2+R1*R2)    //Input resistance of the amplified stage (in ohm)
Ai = hfe                                //Current gain of transistor
rL = RC * RL / (RC + RL)                //a.c. load resistance (in ohm)
Avs=Ai*rL/Ri;Av=Ai*rL/Ri;

//Result

printf("\n Input impedance is  %0.2f  kilo-ohm.\nOverall voltage gain is  %0.1f .",Ris*10**-3,Avs)
