clear//

//Variables

VCC = 10.0                        //Source voltage (in volts)
RE = 1.5 * 10**3                  //Emitter resistance (in ohm)
R1 = 30.0 * 10**3                 //Resistance (in ohm)
R2 = 20.0 * 10**3                 //Resistance (in ohm)
beta1 = 150.0                     //Common emitter current gain
beta2 = 100.0                     //Common emitter current gain
VBE = 0.7                         //Emitter-to-base voltage (in volts)

//Calculation

Ai = beta1 * beta2                //Overall current gain of transistor
VR2 = VCC * R2/(R1 + R2)          //Voltage across resistor2 (in volts)
VB2 = VR2 - VBE                   //Voltage at the base of Q2 (in volts)
VE2 = VB2 - VBE                   //Voltage at the emitter of Q2 (in volts)
IE2 = VE2 / RE                    //Emitter current of Q2 (in Ampere)
r1e2 = 25.0/IE2 * 10**-3          //a.c. emitter diode resistance of Q2 (in ohm)
IB2 = IE2 / beta2                 //Base current of Q2 (in Ampere)
IE1 = IB2                         //Emitter current of Q2
r1e1 = 25.0/IE1 * 10**-3          //a.c. emitter diode resistance of Q1 (in ohm)   
Ri1 = R1 * R2/(R1 + R2)           //Total input resistance (in ohm)
Av = RE/(r1e1/beta2 + r1e2 + RE)  //Overall voltage gain

//Result

printf("\n The overall current gain is  %0.3f .",Ai)
printf("\n The a.c. emitter diode resistance of Q1 transistor is  %0.1f  ohm.\nThe a.c. emitter diode resistance of Q2 transistor is  %0.2f  ohm.",r1e1,r1e2)
printf("\n Total input resistance is  %0.3f  kilo-ohm.",Ri1 * 10**-3)
printf("\n Overall voltage gain is  %0.2f .",Av)
