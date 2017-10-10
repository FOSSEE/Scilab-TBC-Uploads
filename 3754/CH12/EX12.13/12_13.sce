clear//

//Variables

VS = 6                         //Source voltage (in volts)
VD1=0.7;VD2=0.7;
R = 1.5 * 10**3                //Resistance (in ohm)

//Calculation

I = (VS - VD1 - VD2)/R         //Current (in Ampere)

//Result

printf("\n Total current through the circuit is  %0.3f  mA." ,I * 10**3)
