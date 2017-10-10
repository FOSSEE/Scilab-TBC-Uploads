clear//

//Variables

fo = 2.0 * 10**3                                //Frequency (in Hertz)
hie = 2.0 * 10**3                               //hie (in ohm)
R1 = 20.0 * 10**3                               //Resistance (in ohm)
R2 = 80.0 * 10**3                               //Resistance (in ohm)
RC = 10.0 * 10**3                               //Collector Resistance (in ohm)
R = 8.0 * 10**3                                 //Resistance (in ohm)

//Calculation

C = 1/(2*%pi*R)*(1/(6 + 4*RC/R)**0.5)/fo    //Capacitance (in Farad)
hfe = 23 + 29 * R/RC + 4* RC /R                 //Current gain 
Ri = (1/R1 + 1/R2 + 1/hie)**-1                  //Input resistance (in ohm)
R3 = R - Ri                                     //Feedback resitor (in ohm)

//Result

printf("\n Value of capacaitor C is  %0.3f  micro-Farad.\nValue of transistor gain is hfe >=  %0.3f .\nValue of feedback resistor R3 is  %0.1f  kilo-ohm.",C*10**6,hfe,R3*10**-3)
